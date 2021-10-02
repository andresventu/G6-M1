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
SpecificWorker::SpecificWorker(TuplePrx tprx, bool startup_check) : GenericWorker(tprx) {
    this->startup_check_flag = startup_check;

}

/**
* \brief Default destructor
*/
SpecificWorker::~SpecificWorker() {
    std::cout << "Destroying SpecificWorker" << std::endl;
}

bool SpecificWorker::setParams(RoboCompCommonBehavior::ParameterList params) {

    return true;
}

void SpecificWorker::initialize(int period) {
    std::cout << "Initialize worker" << std::endl;
    this->Period = period;
    this->condicion_case = 0;
    if (this->startup_check_flag) {
        this->startup_check();
    } else {
        timer.start(Period);
    }

}

void SpecificWorker::compute() {

    const float threshold = 350; // millimeters
    float rot = 0.8;  // rads per second
    int adv = 220;
    try {

        // read laser data
        RoboCompLaser::TLaserData ldata = laser_proxy->getLaserData();
        //sort laser data from small to large distances using a lambda function.
        std::sort(ldata.begin() + 10, ldata.end() - 10,
                  [](RoboCompLaser::TData a, RoboCompLaser::TData b) { return a.dist < b.dist; });std::cout << ldata[12].dist << std::endl;

            if (ldata[12].dist < threshold) {
                        differentialrobot_proxy->setSpeedBase(5, rot);
                usleep(rand()%(1500000-100000 + 1) + 100000);

            } else {
                switch (condicion_case) {
                    case 0: //ESPIRAL
                        while(ldata[12].dist > threshold && adv<1000){
                            ldata = laser_proxy->getLaserData();
                            std::sort(ldata.begin() + 10, ldata.end() - 10,
                                      [](RoboCompLaser::TData a, RoboCompLaser::TData b) { return a.dist < b.dist; });
                            differentialrobot_proxy->setSpeedBase(adv, rot);adv=adv+12;usleep(1000000);
                        }
                        condicion_case=rand() % 2;
                        break;
                    case 1:
                        while(ldata[12].dist > threshold){
                            ldata = laser_proxy->getLaserData();
                            std::sort(ldata.begin() + 10, ldata.end() - 10,
                                      [](RoboCompLaser::TData a, RoboCompLaser::TData b) { return a.dist < b.dist; });
                            differentialrobot_proxy->setSpeedBase(450, 0);
                        }
                        condicion_case=rand() % 2;
                        break;
                }
            }
    }

    catch (const Ice::Exception &ex) {
        std::cout << ex << std::endl;
    }

}
//usleep(rand() % (1500000 - 100000 + 1) + 100000);  // random wait between 1.5s and 0.1sec
//++condicion_case;  adv<1000 ||
//std::cout << ldata[10].dist << std::endl;
//differentialrobot_proxy->setSpeedBase(5, rot);
//usleep(rand()%(1500000-100000 + 1) + 100000);  // random wait between 1.5s and 0.1sec
void SpecificWorker::espiral( RoboCompLaser::TLaserData ldata,float rot) {

    cout << "espiral" << condicion_case << endl;
        cout << "Comienzo bucle, valor de condicion: " << condicion_case << endl;
        while(ldata[12].dist > 600){
            differentialrobot_proxy->setSpeedBase(condicion_case, rot);
            condicion_case=condicion_case+20;
        }


        cout << "Espiral" << endl;



}
int SpecificWorker::startup_check() {
    std::cout << "Startup check" << std::endl;
    QTimer::singleShot(200, qApp, SLOT(quit()));
    return 0;
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

