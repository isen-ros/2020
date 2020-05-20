cd
roscore &
cd ~/catkin_ws
source ./devel/setup.bash 
rosrun beginner_tutorials talker &
source ./devel/setup.bash 
rosrun beginner_tutorials talker.py
