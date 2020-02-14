#Class2 Murgier Florian
#These are the steps needed to change the color of the turtle pen and then moving the turtle on a square path
#We will need 3 terminals
#After each terminal opening, type bash turtle.sh to run the next instruction
#Ctrl+Alt+t to open the first terminal

roscore

#Ctrl+Alt+t to open the second terminal

rosrun turtlesim turtlesim_node

#Ctrl+Alt+t to open the third terminal
#Changing the turtle_pen color
rosservice call turtle1/set_pen 140 10 10 10 off

#Moving the turtle
rosservice call turtle1/teleport_absolute 10 5.6 0
rosservice call turtle1/teleport_absolute 10 5.6 14
rosservice call turtle1/teleport_absolute 10 10 14
rosservice call turtle1/teleport_absolute 10 10 3
rosservice call turtle1/teleport_absolute 5.6 10 3
rosservice call turtle1/teleport_absolute 5.6 10 11
rosservice call turtle1/teleport_absolute 5.6 5.6 11
