#include <ros/ros.h>

//Library to create text file and write in it
#include <iostream>
#include <fstream> 
#include <string> 

//Topic we use to know where the user annotate a point in rviz
#include <geometry_msgs/PoseStamped.h>

void pointCallback(const geometry_msgs::PoseStamped &point)
{
   float test = point.pose.position.x;

   const char *test_t;

   std::string inputString;

   //We ask the user to give a name to the pose he want to store
   std::cout << "Give a name to this pose : ";
   std::getline(std::cin, inputString);
   
   //We store everything in a txt file in the directory pose_point we have created
   std::string test_conv = "/home/seb/catkin_ws/src/class3_group/pose_point/" + inputString + ".txt";

   const char *path=test_conv.c_str();

   std::ofstream file(path);



   std::ostringstream oss;

   oss << point.pose.position.x;
   oss << "\n";
   oss << point.pose.position.y;
   oss << "\n";
   oss << point.pose.position.z;
   oss << "\n";
   oss << "\n";
   oss << point.pose.orientation.x;
   oss << "\n";
   oss << point.pose.orientation.y;
   oss << "\n";
   oss << point.pose.orientation.z;
   oss << "\n";
   oss << point.pose.orientation.w;



   file << oss.str() << std::endl;
   file.close();

   ROS_INFO("Pose store");
}

int main(int argc, char **argv)
{
   ros::init(argc, argv, "annotate_point");
   ros::NodeHandle n("~");
   ros::Subscriber sub = n.subscribe("/move_base/current_goal", 10, pointCallback);
   ros::Rate loop_rate(50);
   while (ros::ok())
   {
      ros::spinOnce();
      loop_rate.sleep();
   }
}

