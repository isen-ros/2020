import rospy
import subprocess
import time
from geometry_msgs.msg import Twist


#Move the turtle with this function
def move(linearx, lineary, linearz, angularx, angulary, angularz):
	# Starts a new node

	velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
	vel_msg = Twist()

	vel_msg.linear.x = linearx
	vel_msg.linear.y = lineary
	vel_msg.linear.z = linearz
	vel_msg.angular.x = angularx
	vel_msg.angular.y = angulary
	vel_msg.angular.z = angularz



        #Setting the current time for distance calculus
        t0 = rospy.Time.now().to_sec()
        current_distance = 0
	distance = 2

        #Loop to move the turtle
        while(current_distance < distance):
            #Publish the velocity
            velocity_publisher.publish(vel_msg)
            #Actual time to velocity calculus
            t1=rospy.Time.now().to_sec()
            #Calculates distancePoseStamped
            current_distance= 1*(t1-t0)
        #After the loop, stops the robot
        vel_msg.linear.x = 0
	vel_msg.linear.y = 0
	vel_msg.linear.z = 0
	vel_msg.angular.x = 0
	vel_msg.angular.y = 0
	vel_msg.angular.z = 0
        #stop robot
        velocity_publisher.publish(vel_msg)






if __name__ == '__main__':
    try:
        
	rospy.init_node('robot_cleaner', anonymous=True)
        move(1, 0, 0, 0, 0, 0)
	move(0, 0, 0, 0, 0, 0.785)
        move(1, 0, 0, 0, 0, 0)
	move(0, 0, 0, 0, 0, 0.785)
        move(1, 0, 0, 0, 0, 0)
	move(0, 0, 0, 0, 0, 0.785)
        move(1, 0, 0, 0, 0, 0)
	move(0, 0, 0, 0, 0, 0.785)
    except rospy.ROSInterruptException: pass