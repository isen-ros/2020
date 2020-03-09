#include "ros/ros.h"
#include "beginner_tutorials/Hour.h"
#include <time.h>

time_t heure=time(NULL);
struct tm* temp=localtime(&heure);

bool hour(beginner_tutorials::Hour::Request &req, beginner_tutorials::Hour::Response &res)
{
	res.hour=temp->tm_hour;
	res.min=temp->tm_min;
	res.sec=temp->tm_sec;
return true;
}

int main(int argc, char** argv){
	std::string service_name="hour";	
	ros::init(argc,argv,"hour_server");
	ros::NodeHandle n;
	ros::ServiceServer service = n.advertiseService("heure", hour);
	ROS_INFO("ready to tell you what time it is");
	ros::spin();
	return 0;
}
