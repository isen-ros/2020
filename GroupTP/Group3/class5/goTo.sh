#! /usr/bin/env sh

#Be sure to open roscore, roslaunch navigation... & roslaunch bringup... before

echo "Where do you want to go ? Please enter 'B902', 'B903', 'couloir1' or 'couloir2'"

while [ 1 ]
do
	read i
	if [ "$i" = "B902" ]; then
		rostopic pub /move_base_simple/goal geometry_msgs/PoseStamped '{ header: {stamp: now, frame_id: "map"}, pose: { position: {x: -1.95, y: 1.37, z: 0.0}, orientation: {w: 1.0}}}' 
		break
	elif [ "$i" = "couloir1" ]; then
		rostopic pub /move_base_simple/goal geometry_msgs/PoseStamped '{ header: {stamp: now, frame_id: "map"}, pose: { position: {x: -4.47, y: -3.23, z: 0.0}, orientation: {w: 1.0}}}' 
		break
	elif [ "$i" = "couloir2" ]; then
		rostopic pub /move_base_simple/goal geometry_msgs/PoseStamped '{ header: {stamp: now, frame_id: "map"}, pose: { position: {x: -7.28, y: 1.77, z: 0.0}, orientation: {w: 1.0}}}'
		break
	elif [ "$i" = "B903" ]; then
		rostopic pub /move_base_simple/goal geometry_msgs/PoseStamped '{ header: {stamp: now, frame_id: "map"}, pose: { position: {x: -3.78, y: -1.05, z: 0.0}, orientation: {w: 1.0}}}'
		break
	else
		echo "Wrong word, please try again"
	fi
done

