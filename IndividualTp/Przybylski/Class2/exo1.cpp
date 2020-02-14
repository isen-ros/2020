/* Flavie PRZYBYLSKI */

#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Pose.h"
#include <sstream>

using namespace std;
using namespace ros;
using namespace geometry_msgs;
using namespace turtlesim;

//declare publishers and subscribers
Publisher velocity_publisher;
Subscriber pose_subscriber;

//global variable for storing the pose of the turtlesim
//it is updated in the callback function [poseCallback] (see below)
Pose turtlesim_pose;

/**TODO****************************************
 * declare a publisher 'object_drawn_publisher'
 * for the '/object_drawn' topic.
 * Make only the declaration, the creation must
 * be done in the main() function.
 *********************************************/

//total distance traveled by the turtlesim
int distanceTraveled = 0;

//boundaries of the turtlesim board
const double x_min = 0.0;
const double y_min = 0.0;
const double x_max = 10.0;
const double y_max = 10.0;
const double PI = 3.14159265359;

/**** functions declarations *****/
void move(double speed, double distance, bool isForward);
void rotate (double angular_speed, double angle, bool clockwise);
void poseCallback(const turtlesim::Pose::ConstPtr & pose_message);
void drawC();
void drawS();
void draw4();
void drawSquare(int side); //side is expressed in unit. one unit is distance traveled by the turtlesim with a speed 1.0 and for 1.0 second
void drawTriangle(int side); //side is expressed in unit. All sides of triangle are equal
void drawCircle(int radius); //radius is expressed in unit.
void menu();

/**main function**/
int main(int argc, char **argv)
{

	ros::init(argc, argv, "shape_drawing_node");
	ros::NodeHandle n;

	velocity_publisher = n.advertise<geometry_msgs::Twist>("/turtlesim1/turtle1/cmd_vel", 1000);

	/********* TODO *******************************
	 * create a subscriber for the /turtle1/pose topic
	 * which represents the pose of the turtlesim
	 * buffer size = 10;
	 * callback function name: poseCallback(already defined)
	 *********************************************/


	/********* TODO *******************************
	 * create the publisher 'object_drawn_publisher'
	 * for the '/object_drawn' topic that you
	 * declared above
	 *********************************************/

	ros::Rate loop_rate(10);
	ros::spinOnce();

	drawSquare(1);

	//ros::spin();

	return 0;
}


/** Dessin du carré avec les fonctions move et rotate qu'on retrouve en bas **/
void drawSquare(int side){
	ROS_INFO("\nDessin du carre en cours ... \n");
	
	rotate (1, 0, true);
	move(1, 2, true);
	rotate (1, PI/2, true);
	move(1, 2, true);
	rotate (1, PI/2, true);
	move(1, 2, true);
	rotate (1, PI/2, true);
	move(1, 2, true);

	ROS_INFO("\nDessin fini \n");
}



/** move the robot with a certain speed for a certain distance, forward or backward **/
void move(double speed, double distance, bool isForward){
	distanceTraveled += distance;
	geometry_msgs::Twist vel_msg;
	//set a random linear velocity in the x-axis
	if (isForward)
		vel_msg.linear.x =abs(speed);
	else
		vel_msg.linear.x =-abs(speed);
	vel_msg.linear.y =0;
	vel_msg.linear.z =0;
	//set a random angular velocity in the y-axis
	vel_msg.angular.x = 0;
	vel_msg.angular.y = 0;
	vel_msg.angular.z =0;

	double t0 = ros::Time::now().toSec();
	double current_distance = 0.0;
	ros::Rate loop_rate(100);
	do{
		velocity_publisher.publish(vel_msg);
		double t1 = ros::Time::now().toSec();
		current_distance = speed * (t1-t0);
		ros::spinOnce();
		loop_rate.sleep();
		//cout<<(t1-t0)<<", "<<current_distance <<", "<<distance<<endl;
	}while(current_distance<distance);
	vel_msg.linear.x =0;
	velocity_publisher.publish(vel_msg);

}

/** rotate the robot with a certain angular speed for a certain relative angle **/
void rotate (double angular_speed, double relative_angle, bool clockwise){

	geometry_msgs::Twist vel_msg;
	//set a random linear velocity in the x-axis
	vel_msg.linear.x =0;
	vel_msg.linear.y =0;
	vel_msg.linear.z =0;
	//set a random angular velocity in the y-axis
	vel_msg.angular.x = 0;
	vel_msg.angular.y = 0;
	if (clockwise)
		vel_msg.angular.z =-abs(angular_speed);
	else
		vel_msg.angular.z =abs(angular_speed);

	double t0 = ros::Time::now().toSec();
	double current_angle = 0.0;
	ros::Rate loop_rate(1000);
	do{
		velocity_publisher.publish(vel_msg);
		double t1 = ros::Time::now().toSec();
		current_angle = angular_speed * (t1-t0);
		ros::spinOnce();
		loop_rate.sleep();
		//cout<<(t1-t0)<<", "<<current_angle <<", "<<relative_angle<<endl;
	}while(current_angle<relative_angle);

	//force the robot to stop when it reaches the desired angle
	vel_msg.angular.z =0;
	velocity_publisher.publish(vel_msg);
}


