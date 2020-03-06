#include "ros/ros.h"
#include "Class_6/hour.h"
#include <time.h>

bool hour(Class_6::hour::Request &req, Class_6::hour::Response &res)
{
  time_t h = time(NULL);
  struct tm *tmp = localtime(&h);

  res.hour = tmp->tm_hour;
  res.min = tmp->tm_min;
  res.sec = tmp->tm_sec;
  ROS_INFO("Sending hour");
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("hour", hour);
  ROS_INFO("Ready to send hour !");
  ros::spin();

  return 0;
}