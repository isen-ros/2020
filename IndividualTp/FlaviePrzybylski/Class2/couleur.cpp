/* Flavie PRZYBYLSKI */


#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <turtlesim/SetPen.h>
#include <turtlesim/Spawn.h>

int main(int argc, char** argv){
  ros::init(argc, argv, "couleur");

  ros::NodeHandle node;

  /*ros::service::waitForService("setpen");*/
  ros::ServiceClient add_turtle = node.serviceClient<turtlesim::SetPen>("setpen");
  turtlesim::SetPen::Request srv;
  turtlesim::SetPen::Response rec;
  
  srv.r = 255;
  srv.g = 0;
  srv.b =0;
  srv.width = 2;
  srv.off = false;
  add_turtle.call(srv,rec);

  return 0;
}
