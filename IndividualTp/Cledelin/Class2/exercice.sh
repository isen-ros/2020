#!/bin/bash

roscore & 
rosrun turtlesim turtlesim_node &
bash setcolor.sh
bash square.sh
