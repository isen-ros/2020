
#include <ros/ros.h>
 #include "std_msgs/String.h"
#include <string>
#include <sstream>
#include<time.h>

int main(int argc, char* argv[])
{
	
 ros::init(argc, argv, "hour_time_node");


 ros::NodeHandle nh;

  ros::Publisher hour_node_pub = nh.advertise<std_msgs::String>("hour", 1000);
  ros::Rate loop_rate(10);

  int count = 0;

     while (ros::ok())
     {
 
      time_t current_time;
      struct tm * time_info;
      char timeString[9];  // space for "HH:MM:SS\0"

      time(&current_time);
      time_info = localtime(&current_time);

      strftime(timeString, sizeof(timeString), "%H:%M:%S", time_info);
      puts(timeString);

      std_msgs::String msg;
      std::stringstream ss;
      ss << timeString << count;
      msg.data = ss.str();
   
     
      ROS_INFO("%s", msg.data.c_str());
      hour_node_pub.publish(msg);

  
      ros::spinOnce();
  
     loop_rate.sleep();
     ++count;
     }

  ros::spin();
}