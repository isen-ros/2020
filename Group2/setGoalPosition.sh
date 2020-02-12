#! /usr/bin/env sh

rostopic pub /move_base_simple/goal geometry_msgs/PoseStamped '{ header: {stamp: now, frame_id: "map"}, pose: { position: {x: 2, y: 1, z: 0.0}, orientation: {w: 1.0}}}'
