/*

Objectif : Création du serveur pour renvoyer l'heure lorsque 

Auteur : Sébastien CARRE	16/02/2020

*/

#include "ros/ros.h" /*	*/
#include "class_6/hour.h" /* On récupère le service créé */
#include <time.h> /* Bibliothèque permettant de récupérer les données de temps */

time_t theTime = time(NULL);
struct tm *aTime = localtime(&theTime);

bool heure(class_6::hour::Request  &req,
         class_6::hour::Response &res)
{
  res.hour = aTime->tm_hour; /* On implémente l'heure dans la variable de sortiedu service */
  ROS_INFO("Envoie de l'heure");
  return true;
}

/*
*/

int main(int argc, char **argv)
{
  ros::init(argc, argv, "hour_server");
  ros::NodeHandle n;

  ros::ServiceServer service = n.advertiseService("hour", heure);
  ROS_INFO("Prêt à envoyer l'heure");
  ros::spin();

  return 0;
}

/*
*/
