#include "ros/ros.h" /*	*/
#include "class_6/hour.h" /* On récupère le service créé */
#include <cstdlib> /* */

int main(int argc, char **argv)
{
  ros::init(argc, argv, "hour_client");
  if (argc != 3)
  {
    ROS_INFO("usage: hour client");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<class_6::hour>("hour");
  class_6::hour srv;
  srv.request.test = 1;

  while(1){

	  if (client.call(srv))
	  {
	    ROS_INFO("Hour: %ld", srv.response.hour);
	  }
	  else
	  {
	    ROS_ERROR("Failed to call service hour");
	    return 1;
	  }
	  ros::Duration(1).sleep();
  }

  return 0;
}
