cd
roscore
rosrun turtlesim turtlesim_node
rosrun tf view_frames
evince frames.pdf
rosrun rqt_tf_tree rqt_tf_tree
rosrun tf tf_echo turtle1
rosrun rviz rviz -d 'rospack find turtle_tf'/rviz/turtle_rviz.rviz
