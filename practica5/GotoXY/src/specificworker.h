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

/**
	\brief
	@author authorname
*/



#ifndef SPECIFICWORKER_H
#define SPECIFICWORKER_H

#include <genericworker.h>
#include <innermodel/innermodel.h>
#include <abstract_graphic_viewer/abstract_graphic_viewer.h>
#include <eigen3/Eigen/Geometry>
#include <grid2d/grid.h>
#include <cppitertools/range.hpp>
#include <cppitertools/sliding_window.hpp>
#include <cppitertools/enumerate.hpp>

class SpecificWorker : public GenericWorker
{
Q_OBJECT
public:


	SpecificWorker(TuplePrx tprx, bool startup_check);
	~SpecificWorker();
	bool setParams(RoboCompCommonBehavior::ParameterList params);



public slots:
	void compute();
	int startup_check();
	void initialize(int period);
    void click(QPointF punto);
    std::tuple<float,float> calcularPunto(RoboCompGenericBase::TBaseState bState);
    void Forward(RoboCompGenericBase::TBaseState bState,float distan,float beta);
    void Turn();
    void Border(RoboCompLaser::TLaserData ldata,float distan,RoboCompGenericBase::TBaseState bState);
    std::vector<int> AlgoritmoBug(QPointF P1, QPointF P2);
    bool checkPoint(const RoboCompLaser::TLaserData &laser_data, float x , float y);
    int calcularDistanciaIzquierda(const RoboCompLaser::TLaserData &ldataX);
    int calcularDistanciaDerecha(const RoboCompLaser::TLaserData &ldataX);

    void draw_laser (const RoboCompLaser :: TLaserData & ldata);
private:
    enum class State {TURN,EXPLORE,DOOR,OTHERROOM,CENTERROOM};
    State state=State::EXPLORE;
	std::shared_ptr < InnerModel > innerModel;
    AbstractGraphicViewer *viewer;
    const int ROBOT_LENGTH = 400;
    QGraphicsPolygonItem *robot_polygon;
    QGraphicsRectItem *laser_in_robot_polygon;
	bool startup_check_flag;
    std::vector<int> VectorLinea;
    template <typename T>
    struct Target {
        T content;
        QPointF punto;
        bool activo=false;
    };
    Target<Eigen::Vector2f> t1;

    float dist;
    float beta;
    float MAX_ADVANCE;

    float stop_if_turning(float beta);

    float stop_if_At_target(float dist);
    Grid varGrid;
    QLineF door;
    QPointF target_to_robot;
    void update_map(const RoboCompLaser::TLaserData &ldata,const RoboCompFullPoseEstimation::FullPoseEuler &r_state);
    Eigen::Vector2f posicion_robot(const RoboCompFullPoseEstimation::FullPoseEuler &r_state, Eigen::Vector2f cartesianP);
    SpecificWorker::State exploringRoom(const RoboCompLaser::TLaserData &ldata,const RoboCompFullPoseEstimation::FullPoseEuler &r_state);
    SpecificWorker::State lookDoor(const RoboCompLaser::TLaserData &ldata, const RoboCompFullPoseEstimation::FullPoseEuler &r_state);
    QPointF world_to_robot( RoboCompFullPoseEstimation::FullPoseEuler r_state);



};

#endif
