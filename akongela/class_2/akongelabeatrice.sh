#!/bin/bash

xterm -e roslaunch test_prog_c turtlemimic.launch &

xterm -e rosrun test_prog_c changingpencolor

xterm -e rosrun test_prog_c drawingsquare

