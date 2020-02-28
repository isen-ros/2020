#include "ros/ros.h"
#include <geometry_msgs/PoseStamped.h>

#include <sstream>

int main(int argc, char **argv)
{

  ros::init(argc, argv, "goToRoom");

  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<geometry_msgs::PoseStamped>("move_base_simple/goal", 1000);

  ros::Rate loop_rate(10);
  float x=0;
  float y=0;

  while (ros::ok())
  {
    std::string inputString;
    std::cout << "X : ";
    std::cin >> x;
    std::cout << "Y : ";
    std::cin >> y;

    geometry_msgs::PoseStamped msg;

    ROS_INFO("You choose class 1");
    msg.header.stamp=ros::Time::now();
    msg.header.frame_id = "map";

    msg.pose.position.x = x; 
    msg.pose.position.y = y;
    msg.pose.position.z = 0;
    msg.pose.orientation.x = 0;
    msg.pose.orientation.y = 0;
    msg.pose.orientation.z = 0;
    msg.pose.orientation.w = 1;


    

    ROS_INFO("We publish");

    chatter_pub.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
  }

  return 0;
}
