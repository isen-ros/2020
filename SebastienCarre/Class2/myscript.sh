#!/bin/bash

xterm -e roslaunch test_prog_c turtlemimic.launch &
xterm -e rosrun test_prog_c change_pen_color
xterm -e rosrun test_prog_c shape_drawing
