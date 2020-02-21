/**
**  Simple ROS Node
**/
#include <ros/ros.h>
#include <time.h>
#include <stdio.h>
#include "std_msgs/String.h"
#include <sstream>
int main(int argc, char* argv[])
{
  // This must be called before anything else ROS-related
  ros::init(argc, argv, "time_node");

  // Create a ROS node handle
  ros::NodeHandle n;

  // Print the time
  
  ros::Publisher hour_pub = n.advertise<std_msgs::String>("hour", 1000);
  ros::Rate loop_rate(1);

while(ros::ok()){
	time_t current_time;
	struct tm * time_info;
	char timeString[9];  // space for "HH:MM:SS\0"

	time(&current_time);
	time_info = localtime(&current_time);

	strftime(timeString, sizeof(timeString), "%H:%M:%S", time_info);
  std_msgs::String msg;
  std::stringstream ss;
  ss << timeString;
  msg.data = ss.str();

  ROS_INFO("%s", msg.data.c_str());

  hour_pub.publish(msg);
  ros::spinOnce();
  loop_rate.sleep();
}

  // Don't exit the program.
  ros::spin();

}

