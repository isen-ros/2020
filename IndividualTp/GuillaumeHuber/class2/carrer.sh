#Guillaume Huber

roscore &
rosrun turtlesim turtlesim_node &
#Changer la couleur du trait fait par la turtle
rosservice call /turtle1/set_pen '115' '48' '61' '8' 'off'

#Déplacement en carré de la turtle

rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[5,0,0]' '[0,0,0]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[0,0,0]' '[0,0,1.57]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[5,0,0]' '[0,0,0]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[0,0,0]' '[0,0,1.57]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[5,0,0]' '[0,0,0]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[0,0,0]' '[0,0,1.57]'
rostopic pub -1 /turtle1/cmd_vel/ geometry_msgs/Twist '[5,0,0]' '[0,0,0]'
