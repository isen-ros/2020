#include <cstdio>
#include "ros/ros.h"
#include <vector>
#include "AnnotatedPose/AnnotatedPose.h"
#include "geometry_msgs/Pose.h"
#include <string>
using namespace std;

bool storeCurrentPose (AnnotatedPose::AnnotatedPose::Request &req,
	           AnnotatedPose::AnnotatedPose::Response &res);

int main(int argc, char* argv[])
{
	
 ros::init(argc, argv, "AnnotatedPose_node");
 ros::NodeHandle n;

 ros::ServiceServer storepose =n.advertiseService("AnnotatedPose",storeCurrentPose);
 ROS_INFO("Position stored");
 ros::spin();


}


class AnnotatedPosition
{
public:
   std::string name;
   geometry_msgs::Pose pose;
   void setName(std::string name){

   	this->name=name;
   }
    void setPose(geometry_msgs::Pose pose){
    	this->pose=pose;
    }
    std::string getName(){

   	return this->name;
   }
    geometry_msgs::Pose getPose(){
    	 return this->pose;
    }

  
AnnotatedPosition(std::string annotation,geometry_msgs::Pose pose){
this->name=annotation;
this->pose=pose;
}


~AnnotatedPosition(){

}


};

vector<AnnotatedPosition>tab();


bool storeCurrentPose (AnnotatedPose::AnnotatedPose::Request &req,
	           AnnotatedPose::AnnotatedPose::Response &res){
	
AnnotatedPosition *var= new AnnotatedPosition(req.annotation.data,req.pose);
	var>>tab[tab.size()];
if (tab[tab.size()-1]== var)	return true;
else return false;


}
/*

AnnotatedPose* poses() {
 return tab;
}

bool goToPose(AnnotatedPose.name name){
	bool atThePosition= false;
	bool timeout;

	while(not(atThePosition)){
		printf("moving");
		if (timeout){

			printf("error");
			return false;
		}

	}
	return true;



}
*/