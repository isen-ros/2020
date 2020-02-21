#Made by Nassima MEDJENAH

#This program launch roscore, rosrun, change the color of the pen and make the
#turtle do a square

# / ! \ Be sure to do the command "killall roscore" before launching this script

roscore &
rosrun turtlesim turtlesim_node &
sleep 7

rosservice call /turtle1/set_pen '120' '24' '61' '2' 'off'

rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[2,0,0]' '[0,0,0]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[0,0,0]' '[0,0,1.57]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[2,0,0]' '[0,0,0]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[0,0,0]' '[0,0,1.57]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[2,0,0]' '[0,0,0]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[0,0,0]' '[0,0,1.57]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[2,0,0]' '[0,0,0]'
