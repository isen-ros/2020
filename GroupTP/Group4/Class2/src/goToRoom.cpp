#include "ros/ros.h"
#include <geometry_msgs/PoseStamped.h>

#include <sstream>

int main(int argc, char **argv)
{

  ros::init(argc, argv, "goToRoom");

  ros::NodeHandle n;

  ros::Publisher chatter_pub = n.advertise<geometry_msgs::PoseStamped>("move_base_simple/goal", 1000);

  ros::Rate loop_rate(10);
  int choix=0;

  while (ros::ok())
  {
    std::string inputString;
   
    //We ask the user which classroom he want to go
    std::cout << "In which class would you like to go ? (1 - 2 - 3) : ";
    std::cin >> choix;
    geometry_msgs::PoseStamped msg;

    switch(choix){
    	case 1:
		ROS_INFO("You choose class 1");
		msg.header.stamp=ros::Time::now();
    		msg.header.frame_id = "map";

    		msg.pose.position.x = -1.1756;
	    	msg.pose.position.y = -0.383528;
	    	msg.pose.position.z = 0;
	    	msg.pose.orientation.x = 0;
	    	msg.pose.orientation.y = 0;
	    	msg.pose.orientation.z = 0;
	    	msg.pose.orientation.w = 1;
		break;

    	case 2:
		ROS_INFO("You choose class 2");
		msg.header.stamp=ros::Time::now();
    		msg.header.frame_id = "map";

    		msg.pose.position.x = 3.14326;
	    	msg.pose.position.y = -0.767057;
	    	msg.pose.position.z = 0;
	    	msg.pose.orientation.x = 0;
	    	msg.pose.orientation.y = 0;
	    	msg.pose.orientation.z = 0;
	    	msg.pose.orientation.w = 1;
		break;

    	case 3:
		ROS_INFO("You choose class 3");
		msg.header.stamp=ros::Time::now();
    		msg.header.frame_id = "map";

    		msg.pose.position.x = -5.69456;
	    	msg.pose.position.y = -0.600305;
	    	msg.pose.position.z = 0;
	    	msg.pose.orientation.x = 0;
	    	msg.pose.orientation.y = 0;
	    	msg.pose.orientation.z = 0;
	    	msg.pose.orientation.w = 1;
		break;
    }

    

    ROS_INFO("We publish");

    chatter_pub.publish(msg);

    ros::spinOnce();

    loop_rate.sleep();
  }

  return 0;
}
