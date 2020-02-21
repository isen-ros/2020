#include "ros/ros.h"
#include "exercice6/serveur.h"
#include "stdio.h"
#include "time.h"

bool add(exercice6::serveur::Request &req, exercice6::serveur::Response &res)
{
  time_t secondes;
  struct tm instant;

  time(&secondes);
  instant=*localtime(&secondes);

  res.horaire = instant.tm_hour;
  res.horaire1 = instant.tm_min;
  res.horaire2 = instant.tm_sec;

  ROS_INFO("Infomartion envoyée");
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "heure");
  ros::NodeHandle n;
  time_t secondes;
  ros::ServiceServer service = n.advertiseService("serveur", add);
  ROS_INFO("Buen");
  ros::spin();
  return 0;
}
