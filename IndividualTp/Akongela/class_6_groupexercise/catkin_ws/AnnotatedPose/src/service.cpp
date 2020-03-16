#include <cstdio>
#include "ros/ros.h"
#include <vector>
#include "AnnotatedPose/AnnotatedPose.h"
#include "geometry_msgs/pose.h"
#include <string>

bool AnnotatedPose(AnnotatedPose::AnnotatedPose::Request &req, AnnotatedPose::AnnotatedPose::Response &res)
{

std::String name;
geometry_msgs::Pose pose;

ROS_INFO("Envoi ...");
return true;

}

int main(int argc, char **argv)
{

ros::init(argc, argv, "service");
ros::NodeHandle n;

ros::ServiceServer service = n.advertiseService("AnnotatedPose", AnnotatedPose);
RS_INFO("Envoi ... ");
ros::spin();

return ;
}

