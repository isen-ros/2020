#include "ros/ros.h"
#include "exercice6/serveur.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "client");
  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<exercice6::serveur>("serveur");
  exercice6::serveur srv;
  srv.request.a = 0;

do{

  if (client.call(srv))
  {
    ROS_INFO("Heure => [%ld] : [%ld] : [%ld]", (long int)srv.response.horaire, srv.response.horaire1, srv.response.horaire2);
  }
  else
  {
    ROS_ERROR("Erreur");
    return 1;
  }
 
  ros::Duration(1).sleep();

}while(ros::ok());

  return 0;
}
