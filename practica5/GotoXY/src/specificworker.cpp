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
    MAX_ADVANCE=1000;
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

    varGrid.initialize(dimensions,200,&viewer->scene);

    try
    {
        //RoboCompGenericBase::TBaseState bState;
        //differentialrobot_proxy->getBaseState(bState);
        fullposeestimation_proxy::;    //tcp -h localhost -p 10696
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
            //Pintar laser en el componente
            draw_laser(ldata);
            RoboCompGenericBase::TBaseState bState;
            //differentialrobot_proxy->getBaseState(bState);
           // robot_polygon->setRotation(bState.alpha * 180 / M_PI);
            //robot_polygon->setPos(bState.x, bState.z);

            RoboCompFullPoseEstimation::FullPoseEuler r_state = fullposeestimation_proxy->getFullPoseEuler();
            robot_polygon->setRotation(r_state.rz*180/M_PI);
            robot_polygon->setPos(r_state.x, r_state.y);

//
        }
        catch (const Ice::Exception &ex) {
            std::cout << ex << std::endl;
        }
        RoboCompLaser::TLaserData ldata = laser_proxy->getLaserData();

        RoboCompGenericBase::TBaseState bState;
        differentialrobot_proxy->getBaseState(bState);
        auto[beta, dist] = calcularPunto(bState);
        auto min= std::min_element(ldata.begin() + (ldata.size()/3) - 10,ldata.end() - (ldata.size()/3)+10, [](auto a,auto b){return a.dist < b.dist;});
        float distan=(*min).dist;

        switch(state){
            case State::IDLEL:
                if(t1.activo==true)
                    state=State::FORWARD;
                break;
            case State::FORWARD:
                std::cout << "distan " <<distan<< std::endl;
                if(distan>500)
                Forward(bState,distan,beta);
                else
                    state=State::TURN;
                break;
            case State::TURN:
                if(distan<800){
                    Turn();
                }else{
                    state=State::BORDER;
                }
                std::cout << "turn" << std::endl;
                break;
            case State::BORDER:

                Border(ldata,distan,bState);

                break;
        }
    if(dist < 150) {
        differentialrobot_proxy->setSpeedBase(0, 0);
       t1.activo = false;
    }
}

//returns a number beteen 0 and 1
float SpecificWorker::stop_if_turning(float beta)
{
     //y = exp(-beta*beta/s)
    float y = (-0.5 / log(0.6));
    return exp((-pow(beta, 2)) / y);
}

float SpecificWorker::stop_if_At_target(float dist)
{
    if(dist>1000)
        return 1;
    else
        return dist/1000;
}
void SpecificWorker::Forward(RoboCompGenericBase::TBaseState bState,float distan,float beta){

    if (distan < 120) //avanza
    {
        differentialrobot_proxy->setSpeedBase(0, 0);
        t1.activo = false;
    }else {
        // avance
        float adv = (MAX_ADVANCE * stop_if_turning(beta) * stop_if_At_target(distan))/2;
        //pruebas
        std::cout <<"VELOCIDAD "<< adv << std::endl;std::cout <<"BETA "<< beta << std::endl;std::cout<<"STOP TURNING "<<stop_if_turning(beta)<< std::endl;std::cout<<"STOP TARGET "<<stop_if_At_target(distan)<< std::endl;std::cout <<"distan "<< distan << std::endl;
        differentialrobot_proxy->setSpeedBase(adv, beta);
    }
}
void SpecificWorker::Turn(){
    differentialrobot_proxy->setSpeedBase(10, 0.5);
}
void SpecificWorker::Border(RoboCompLaser::TLaserData ldata,float distan,RoboCompGenericBase::TBaseState bState) {

    auto xAux = t1.content.x();
    auto yAux = t1.content.y();
    Eigen::Vector2f tw(xAux, yAux);

    Eigen::Vector2f rw(bState.x, bState.z);
    Eigen::Matrix2f rot;
    rot << std::cos(bState.alpha), (std::sin(bState.alpha)), -std::sin(bState.alpha), std::cos(bState.alpha);
    auto tr = rot * (tw - rw);

    auto distI = calcularDistanciaIzquierda(ldata);
    auto distD = calcularDistanciaDerecha(ldata);
    if(distan < 460){
        differentialrobot_proxy->setSpeedBase(0, 0.6);
    } else if(distD < 310){
        differentialrobot_proxy->setSpeedBase(190, -0.6);
    } else if(distI > 460){
        differentialrobot_proxy->setSpeedBase(190, -0.6);
    } else {
        differentialrobot_proxy->setSpeedBase(190, 0.6);
    }
    if(checkPoint(ldata, tr.x(), tr.y()))state = State::FORWARD;
    auto distLinea = abs((VectorLinea[0] * bState.x) + (VectorLinea[1] * bState.z) + VectorLinea[2]) / sqrt(pow(VectorLinea[0],2) + pow(VectorLinea[1],2));
    if(distLinea < 30)state = State::FORWARD;

}



std::tuple<float,float> SpecificWorker::calcularPunto(RoboCompGenericBase::TBaseState bState) {
    auto xAux = t1.content.x();
    auto yAux = t1.content.y();
    Eigen::Vector2f tw(xAux, yAux);

    Eigen::Vector2f rw(bState.x, bState.z);
    Eigen::Matrix2f rot;
    rot << std::cos(bState.alpha), (std::sin(bState.alpha)), -std::sin(bState.alpha), std::cos(bState.alpha);
    auto tr = rot * (tw - rw);
    float beta = std::atan2(tr.x(), tr.y());
    float dist = tr.norm();
    return std::make_tuple(beta, dist);

}

int SpecificWorker::calcularDistanciaIzquierda(const RoboCompLaser::TLaserData &ldataX){
    auto min = std::min_element( ldataX.begin() + 10, ldataX.end() - 300, [](auto a, auto b){ return 			a.dist < b.dist; });
    return (*min).dist;
}

int SpecificWorker::calcularDistanciaDerecha(const RoboCompLaser::TLaserData &ldataX){
    auto min = std::min_element( ldataX.begin() + 300, ldataX.end() - 10, [](auto a, auto b){ return 			a.dist < b.dist; });
    return (*min).dist;
}
void SpecificWorker::click(QPointF punto){

    t1.punto=punto;
    t1.content=Eigen::Vector2f (punto.x(),punto.y());
    t1.activo=true;
    RoboCompGenericBase::TBaseState bState;
    differentialrobot_proxy->getBaseState(bState);
    VectorLinea = AlgoritmoBug(QPointF(bState.x,bState.z), punto);
}
std::vector<int> SpecificWorker::AlgoritmoBug(QPointF P1, QPointF P2) {
    std::vector<int>Result;

    Result.push_back(P1.y() - P2.y());
    Result.push_back(P2.x() - P1.x());
    Result.push_back(((P1.x() - P2.x()) * P1.y()) + ((P2.y() - P1.y()) * P1.x()));
    for (int n : Result) {
        std::cout <<"bug "<< n;
    }
    std::cout << std::endl;
    return(Result);
}

bool SpecificWorker::checkPoint(const RoboCompLaser::TLaserData &laser_data, float x , float y) {
    // create laser polygon
    QPolygonF laser_poly;
    QPointF puntoM(x,y);
    for( auto &l : laser_data)
        laser_poly << QPointF(l.dist * sin(l.angle), l.dist * cos(l.angle));
    // check intersection
    if (laser_poly.containsPoint(puntoM,Qt::OddEvenFill))
        return true;
    else
        return false;

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







