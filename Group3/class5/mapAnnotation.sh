#! /usr/bin/env sh

#Program to store coordinates and annotations in a text file
#Be sure to open roscore, roslaunch navigation... & roslaunch bringup... before

echo "Please use the software Rviz to move the robot wherever you want thanks to the button 2D navigation"
echo "Then enter q at any moment in the terminal to store the coordinates of the robot in a text file named mapAnnotationCoordinates"


while [ 1 ]
do
	read i
	if [ "$i" = "q" ]; then
		echo "Enter a name to annotate the coordinates"
		read t
		u=`date -u`
		echo $u >> mapAnnotationCoordinates 
		echo $t >> mapAnnotationCoordinates
		v=`rostopic echo -n 1 /odom/pose/pose/position`
		echo $v >> mapAnnotationCoordinates
		echo "Done !"
	fi
done


