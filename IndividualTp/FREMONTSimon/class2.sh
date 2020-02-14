#!/bin/bash
roscore &
rosrun turtlesim turtlesim_node &
rosservice call /turtle1/set_pen '255' '34' '255' '15' 'off'
rosservice call /turtle1/teleport_relative '2' '1.57'
rosservice call /turtle1/teleport_relative '2' '1.57'
rosservice call /turtle1/teleport_relative '2' '1.57'
rosservice call /turtle1/teleport_relative '2' '1.57'


