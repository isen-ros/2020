roscore &
rosrun turtlesim turtlesim_node &
rosrun turtlesim turtle_teleop_teleop_key &
rosrun tf view_frames
evidence frames.pdf
rosrun rqt_tf_tree rqt_tf_tree
rosrun rviz rviz -d 'rospack find turtle_tf'/rviz/turtle_rviz.rviz
