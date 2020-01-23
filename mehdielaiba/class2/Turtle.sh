#Mehdi Elaiba


roscore &
rosrun turtlesim turtlesim_node &

#Changement couleur trait

rosservice call /turtle1/set_pen '95' '33' '69' '4' 'off'

#La tortue fait un carré

rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[8,0,0]' '[0,0,0]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[0,0,0]' '[0,0,1.57]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[8,0,0]' '[0,0,0]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[0,0,0]' '[0,0,1.57]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[8,0,0]' '[0,0,0]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[0,0,0]' '[0,0,1.57]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[8,0,0]' '[0,0,0]'
