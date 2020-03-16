#include <cstdio>
#include "ros/ros.h"
#include <vector>
#include "AnnotatedPose/AnnotatedPose.h"
#include "geometry_msgs/pose.h"
#include <string>
using namespace std 

class AnnotatedPose
{
//cette classe va permettre de créer les "fonctions" qui vont recevoir en entrée ou renvoyer en sortie les annotatedpose
//elle est publique car tout le monde doit pouvoir modifier les variables name et pose

public:
	std::String name;
	geometry_msgs::Pose pose;

//setter
void setName()
{
	this->name=name;
}
void setPose()
{
	this->pose=pose;
}

//getter
std::String getName()
{
	return this.name;
}
geometry-msgs::Pose getPose()
{
	return this.pose;
}


AnnotatedPose(std::String annot, geometry_msgs::Pose pose)
{
	this.name = annot;
	this.pose = pose;	
}

//Destructeur
~AnnotatedPose()
{

}

};

//crée un tableau qui peut changer de taille
//il va contenir les annotatedpose enregistrés
vector<AnnotatedPose>tableau();

bool storeCurrentPose ( AnnotatedPose::AnnotatedPose::Request &req, AnnotatedPose::AnnotatedPose::Response &res )
{
//de type booleen car il renvoie un booleen true ou false
	AnnotatedPose *var = new AnnotatedPose(res.annot , req.pose); //var est un pointeur
	var>>tableau[tableau.size()];
	if (tableau[tableau.size()-1] == var)
	{
		return true
	}
	else
	{
		return false
	}
}



}

AnnotatedPose * poses()
{
//la liste des annotatedpose enregistrés
	return tableau;
}

bool goToPose(AnnotatedPose.name name)
{
//de type booleen car il renvoie un booleen true ou false
//Previens l'utilisateur quand on atteint la position désirée en renvoyant True

	bool position = false;
	bool timeout;

	while(not(position))
	{
		print("Wait");

		if (timeout)
		{
			print("Erreur");
			return false;
		}
	}
	
	return true;

}


int main (int argc, char* argv[])
{

ros::init (argc, argv, "go_to_pose");
ros::NodeHandle n;

ros::ServiceServer storepose = n.advertiseservice ("AnnotatedPose", go_to_pose);

ROS_INFO("Waiting for the needed information");
ros::spin();

}


