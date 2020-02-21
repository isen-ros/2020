#include "ros/ros.h"




int main(int argc, char **argv)
{
  ros::init(argc, argv, "hour_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("display_hour", add);
  ROS_INFO("pret a afficher l'heure.");
  ros::spin();

  return 0;
}
