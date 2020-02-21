Author: Guillaume Huber 20/02/2020

#include "ros/ros.h"
#include "beginner_tutorials/AddTwoInts.h"
#include <time.h>

//Function from the ROS tutorial, does not impact the code here
/*bool add(beginner_tutorials::AddTwoInts::Request &req,
	 beginner_tutorials::AddTwoInts::Response &res)
{
  res.sum = req.a + req.b;
  ROS_INFO("request: x=%ld, y=%ld", (long int)req.a, (long int)req.b);
  ROS_INFO("sending back response: [%ld]", (long int)res.sum);
  return true;
}*/

//We use time.h available functions to get the current hour
time_t hour1 = time(NULL);
struct tm *hour_tempo = localtime(&hour1);

bool hour(beginner_tutorials::AddTwoInts::Request &req,
	  beginner_tutorials::AddTwoInts::Response &res)
{
  res.sum = hour_tempo->tm_hour;
  res.min = hour_tempo->tm_min;
  res.sec = hour_tempo->tm_sec;
  ROS_INFO("Sending current hour");
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("add_two_ints", hour);
  ROS_INFO("Ready to send hour");
  ros::spin();

  return 0;
}
