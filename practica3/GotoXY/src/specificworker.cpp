/*
 *    Copyright (C) 2021 by YOUR NAME HERE
 *
 *    This file is part of RoboComp
 *
 *    RoboComp is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    RoboComp is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with RoboComp.  If not, see <http://www.gnu.org/licenses/>.
 */
#include "specificworker.h"

/**
* \brief Default constructor
*/
SpecificWorker::SpecificWorker(TuplePrx tprx, bool startup_check) : GenericWorker(tprx)
{
	this->startup_check_flag = startup_check;
    this->beta = 0.0;
    this->dist = 0.0;
}

/**
* \brief Default destructor
*/
SpecificWorker::~SpecificWorker()
{
	std::cout << "Destroying SpecificWorker" << std::endl;
}

bool SpecificWorker::setParams(RoboCompCommonBehavior::ParameterList params)
{
//	THE FOLLOWING IS JUST AN EXAMPLE
//	To use innerModelPath parameter you should uncomment specificmonitor.cpp readConfig method content
//	try
//	{
//		RoboCompCommonBehavior::Parameter par = params.at("InnerModelPath");
//		std::string innermodel_path = par.value;
//		innerModel = std::make_shared(innermodel_path);
//	}
//	catch(const std::exception &e) { qFatal("Error reading config params"); }






	return true;
}

void SpecificWorker::initialize(int period)
{
	std::cout << "Initialize worker" << std::endl;
    QRect dimensions(-5000,-2500,10000,5000);
    viewer = new AbstractGraphicViewer(this, dimensions);
    //this->resize(900,450);
    robot_polygon = viewer->add_robot(ROBOT_LENGTH);
    laser_in_robot_polygon = new QGraphicsRectItem(-10, 10, 20, 20, robot_polygon);
    laser_in_robot_polygon->setPos(0, 190);     // move this to abstract
    try
    {
        RoboCompGenericBase::TBaseState bState;
        differentialrobot_proxy->getBaseState(bState);

        QPointF last_point = QPointF(bState.x, bState.z);
    }
    catch(const Ice::Exception &e) { std::cout << e.what() << std::endl;}
    connect(viewer, &AbstractGraphicViewer::new_mouse_coordinates, this, &SpecificWorker::click);

    this->Period = period;
	if(this->startup_check_flag)
	{
		this->startup_check();
	}
	else
	{
		timer.start(Period);
	}

}

void SpecificWorker::compute()
{
        try {
            RoboCompLaser::TLaserData ldata = laser_proxy->getLaserData();
            draw_laser(ldata);
            //sort laser data from small to large distances using a lambda function.
            std::cout << ldata[5].dist << std::endl;

            RoboCompGenericBase::TBaseState bState;
            differentialrobot_proxy->getBaseState(bState);
            robot_polygon->setRotation(bState.alpha*180/M_PI);
            robot_polygon->setPos(bState.x,bState.z);

            if (t1.activo)
            {
                auto [beta,dist] = calcularPunto(bState);
                differentialrobot_proxy->setSpeedBase(0, beta+M_PI_2);


                }
            }

            //robot_polygon->setRotation(bState.alpha*180/M_PI);
           // robot_polygon->setPos(bState.x, bState.z);




        catch (const Ice::Exception &ex) {
            std::cout << ex << std::endl;
        }

	
	
}
std::tuple<float,float> SpecificWorker::calcularPunto(RoboCompGenericBase::TBaseState bState){
    Eigen::Vector2f rw(bState.x,bState.z);
    Eigen::Matrix2f rot;
    rot<<std::cos(bState.alpha),(std::sin(bState.alpha)),-std::sin(bState.alpha),std::cos(bState.alpha);

    auto tr=rot*(t1.content-rw);
    float beta=std::atan2(-tr.y(),tr.x());
    float dist=tr.norm();
return std::make_tuple(beta,dist);



}
void SpecificWorker::click(QPointF punto){

    t1.punto=punto;
    t1.content=Eigen::Vector2f (punto.x(),punto.y());
    t1.activo=true;
}

int SpecificWorker::startup_check()
{
	std::cout << "Startup check" << std::endl;
	QTimer::singleShot(200, qApp, SLOT(quit()));
	return 0;
}
void SpecificWorker::draw_laser (const RoboCompLaser :: TLaserData & ldata) // coordenadas del robot
{
    static QGraphicsItem * laser_polygon = nullptr;
    // código para eliminar cualquier elemento gráfico láser existente
    if(laser_polygon != nullptr)
        viewer->scene.removeItem(laser_polygon);

    QPolygonF poly;
    // código para rellenar poli con las coordenadas polares del láser (ángulo, dist) transformadas a coordenadas cartesianas (x, y), todo en el // sistema de referencia del robot
    poly << QPointF(0,0);
    for(auto &l: ldata)
        poly << QPointF(l.dist * sin(l.angle), l.dist * cos(l.angle));

    QColor color ("LightGreen");
    color.setAlpha (40);
    laser_polygon = viewer-> scene.addPolygon (laser_in_robot_polygon-> mapToScene (poly), QPen (QColor ("DarkGreen"), 30), QBrush (color));
    laser_polygon-> setZValue (3);
}



/**************************************/
// From the RoboCompDifferentialRobot you can call this methods:
// this->differentialrobot_proxy->correctOdometer(...)
// this->differentialrobot_proxy->getBasePose(...)
// this->differentialrobot_proxy->getBaseState(...)
// this->differentialrobot_proxy->resetOdometer(...)
// this->differentialrobot_proxy->setOdometer(...)
// this->differentialrobot_proxy->setOdometerPose(...)
// this->differentialrobot_proxy->setSpeedBase(...)
// this->differentialrobot_proxy->stopBase(...)

/**************************************/
// From the RoboCompDifferentialRobot you can use this types:
// RoboCompDifferentialRobot::TMechParams

/**************************************/
// From the RoboCompLaser you can call this methods:
// this->laser_proxy->getLaserAndBStateData(...)
// this->laser_proxy->getLaserConfData(...)
// this->laser_proxy->getLaserData(...)

/**************************************/
// From the RoboCompLaser you can use this types:
// RoboCompLaser::LaserConfData
// RoboCompLaser::TData

// auto tr=rot*(tw-rw);
//this->beta=std::atan2(tr.x(), tr.y());
// this->dist=tr.norm();