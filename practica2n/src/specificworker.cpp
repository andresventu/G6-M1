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
    this->espiral=false;
    this->direccion=0;
    if (this->startup_check_flag) {
        this->startup_check();
    } else {
        timer.start(Period);
    }

}

void SpecificWorker::compute() {

    const float threshold = 365; // millimeters
    float r = static_cast <float> (rand()) / static_cast <float> (RAND_MAX);
    cout<<"ROTACION RAND: "<<r<<endl;
    float rot = 0.8;  // rads per second
    int adv = 220;

    try {

        // read laser data
        RoboCompLaser::TLaserData ldata = laser_proxy->getLaserData();
        //sort laser data from small to large distances using a lambda function.
        std::sort(ldata.begin() + 3, ldata.end() - 3,
                  [](RoboCompLaser::TData a, RoboCompLaser::TData b) { return a.dist < b.dist; });std::cout << ldata[5].dist << std::endl;

            if (ldata[12].dist < threshold) { //choca
                switch (direccion) {
                    case 0:
                        while(ldata[12].dist < 650){
                            differentialrobot_proxy->setSpeedBase(-120, 0);
                            usleep(2000000);
                            ldata = laser_proxy->getLaserData();
                            std::sort(ldata.begin() + 3, ldata.end() - 3,
                                    [](RoboCompLaser::TData a, RoboCompLaser::TData b) { return a.dist < b.dist; });
                            differentialrobot_proxy->setSpeedBase(0, rot);
                            usleep(rand()%(1500000-100000 + 1) + 100000);
                        }
                        direccion++;
                        break;
                    case 1:
                        while(ldata[12].dist < 650){
                            differentialrobot_proxy->setSpeedBase(-120, 0);
                            usleep(2000000);
                            ldata = laser_proxy->getLaserData();
                            std::sort(ldata.begin() + 3, ldata.end() - 3,
                                      [](RoboCompLaser::TData a, RoboCompLaser::TData b) { return a.dist < b.dist; });
                            differentialrobot_proxy->setSpeedBase(0, -rot);
                            usleep(rand()%(1500000-100000 + 1) + 100000);
                        }
                        direccion=0;
                        break;
                }
                       // differentialrobot_proxy->setSpeedBase(-100, 0);
                        //usleep(2000000);
                        //while(ldata[12].dist < 400){
                          //  ldata = laser_proxy->getLaserData();
                            //std::sort(ldata.begin() + 3, ldata.end() - 3,
                              //        [](RoboCompLaser::TData a, RoboCompLaser::TData b) { return a.dist < b.dist; });
                                //differentialrobot_proxy->setSpeedBase(0, rot);

                        //}

                //usleep(rand()%(1500000-100000 + 1) + 100000);

            } else {
                switch (condicion_case) {
                    case 0: //ESPIRAL
                        while(ldata[12].dist > threshold && adv<1000 && !espiral){
                            ldata = laser_proxy->getLaserData();
                            std::sort(ldata.begin() + 3, ldata.end() - 3,
                                      [](RoboCompLaser::TData a, RoboCompLaser::TData b) { return a.dist < b.dist; });
                            differentialrobot_proxy->setSpeedBase(adv,0.8);adv=adv+16;usleep(1000000);
                        }
                        condicion_case++;
                        espiral=true;
                        break;
                    case 1:
                        while(ldata[12].dist > threshold){
                            ldata = laser_proxy->getLaserData();
                            std::sort(ldata.begin() + 3, ldata.end() - 3,
                                      [](RoboCompLaser::TData a, RoboCompLaser::TData b) { return a.dist < b.dist; });
                            differentialrobot_proxy->setSpeedBase(800, 0);
                        }
                        condicion_case++;
                        break;
                    case 2:
                        while(ldata[12].dist > threshold){
                            ldata = laser_proxy->getLaserData();
                            std::sort(ldata.begin() + 3, ldata.end() - 3,
                                      [](RoboCompLaser::TData a, RoboCompLaser::TData b) { return a.dist < b.dist; });
                            differentialrobot_proxy->setSpeedBase(800, 0);

                        }
                        condicion_case++;
                        break;
                    case 3:
                        while(ldata[12].dist > threshold){
                            ldata = laser_proxy->getLaserData();
                            std::sort(ldata.begin() + 3, ldata.end() - 3,
                                      [](RoboCompLaser::TData a, RoboCompLaser::TData b) { return a.dist < b.dist; });
                            differentialrobot_proxy->setSpeedBase(800, -0.11);
                        }
                        condicion_case=0;
                        break;
                }
            }
    }

    catch (const Ice::Exception &ex) {
        std::cout << ex << std::endl;
    }

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

