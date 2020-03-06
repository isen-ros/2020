#include "ros/ros.h"
#include "exercice_corentin/serviceHour.h"
#include <sstream>
#include "std_msgs/String.h"
#include "time.h"
#include <iostream>
#include <ctime>
#include <time.h> //ne pas oublier
#include <string.h>
#include <iostream>

using namespace std;

//Program by Corentin STAUDER

bool hour (exercice_corentin::serviceHour::Request &req, exercice_corentin::serviceHour::Response &res) {

struct tm *pdh;
time_t intps;
intps=time(NULL);
pdh = localtime(&intps);

res.seconds = pdh->tm_sec;
res.minutes = pdh->tm_min;
res.hours = pdh->tm_hour;

ROS_INFO("sending back response: [%ld]");

cout << "It's "  << res.hours << " h " << res.minutes << " min and " << res.seconds << " sec" << endl;


return true;

}


int main(int argc, char **argv) {

ros::init(argc, argv, "Server");
ros::NodeHandle node;
ros::ServiceServer service = node.advertiseService("serviceHour", hour);
ROS_INFO("Ready to show the hour");
ros::spin();

return 0;

}

