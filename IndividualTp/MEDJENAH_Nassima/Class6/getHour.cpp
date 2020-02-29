//Program by Nassima MEDJENAH
//This program is the node which exposes the service hour using RosCPP

#include "ros/ros.h"
#include "package/hour.h"
#include <sstream>
#include "std_msgs/String.h"
#include "time.h"

//using namespace ros;

bool getHour (package::hour::Request &req, package::hour::Response &res);

int main(int argc, char **argv)

{
	ros::init(argc, argv, "hour_server");
	ros::NodeHandle node;
	ros::ServiceServer service = node.advertiseService("hour", getHour);
	ros::spin();
	return 0;
}


bool getHour (package::hour::Request &req, package::hour::Response &res) {

	//Another way to have the time

	/*
	ros::Time::useSystemTime();
	ros::Time::init();
	ros::Time time = ros::Time::now();
	res.secs = time.toSec();

	while(res.secs >= 60) {
		if(res.secs >= 3600) {
			res.secs -= 3600;
			res.hours++;
		}
		else {
			res.secs -=60;
			res.mins++;
		}
	}
	*/

	time_t rawTime;
	tm* timeInfo;
	time(&rawTime);
	timeInfo = localtime(&rawTime);

	res.secs = timeInfo->tm_sec;
	res.mins = timeInfo->tm_min;
	res.hours = timeInfo->tm_hour;

	std::stringstream stream;
	std_msgs::String msg;

	stream << "Hour = " << res.hours << ":" << res.mins << ":" << res.secs << std::endl;

	msg.data = stream.str();
	ROS_INFO("%s", msg.data.c_str());

	return true;
}
