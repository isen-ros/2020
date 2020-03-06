#include "ros/ros.h"
#include "beginner_tutorials/hour.h"//récupération du service
#include <time.h>// bibliothèque Time
bool getHour(beginner_tutorials::hour::Request &req,
             beginner_tutorials::hour::Response &res);

time_t Temps=time(NULL);
struct tm *aTime =localtime(&Temps);

int main(int argc, char **argv)
{
  ros::init(argc, argv, "hour_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("display_hour", getHour );
  ROS_INFO("pret a donner l'heure.");
  ros::spin();

  return 0;
}

//beginner_tutorials::HourService::Request  &req,
bool getHour(beginner_tutorials::hour::Request &req,
             beginner_tutorials::hour::Response &res) {

	res.hour=aTime->tm_hour;//on donne comme valeur l heure a la variable de reponse.
	ROS_INFO("envoi");
        return true;
 }
