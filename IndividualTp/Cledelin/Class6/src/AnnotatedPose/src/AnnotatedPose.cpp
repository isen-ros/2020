#include <cstdio>
#include <tf/transform_listener>
#include "ros/ros.h"
#include <vector>

class AnnotatedPose
{
public:
   String name;
   Pose pose;

AnnotatedPose(){

}
~AnnotatedPose(){

}


}

vector <AnnotatedPose> tab;

bool storeCurrentPose(AnnotatedPose pose){
	pose>>AnnotatedPose[AnnotatedPose.Length];
if (AnnotatedPose[AnnotatedPose.Length== pose)	return true;
else return false;





}

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