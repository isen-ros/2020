#! /usr/bin/env sh

#Program to move the robot with some coordinates
#Be sure to open roscore, roslaunch navigation... & roslaunch bringup... before

rostopic pub /move_base_simple/goal geometry_msgs/PoseStamped '{ header: {stamp: now, frame_id: "map"}, pose: { position: {x: -4, y: 0, z: 0.0}, orientation: {w: 1.0}}}'

