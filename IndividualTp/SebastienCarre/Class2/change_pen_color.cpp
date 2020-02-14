/*

Objectif : Changer la couleur du tracé de la tortue

Compile mais le service ne se réalise pas.

Auteur : Sébastien CARRE

*/

#include "ros/ros.h"
#include "turtlesim/SetPen.h"
#include <sstream>


int main(int argc, char **argv)	{

	ros::init(argc, argv, "change_pen_color_node");
	ros::NodeHandle n;

	ros::ServiceClient setPenClient = n.serviceClient<turtlesim::SetPen>("setpen");

	turtlesim::SetPen::Request req;
	turtlesim::SetPen::Response resp;


	req.r = 255;
	req.g = 0;
	req.b=0;
	req.width=20;
	req.off=false;

	bool success = setPenClient.call(req,resp);

	if(success) {
		ROS_INFO_STREAM("Nouvelle couleur");
	} else {
		ROS_INFO_STREAM("Fonctionne pas");
	}
}

