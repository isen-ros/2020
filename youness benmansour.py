import rospy
import subprocess
import time
from geometry_msgs.msg import Twist


#Move the turtle 
def move(lineara, linearb, linearc, angulara, angularb, angularc):
# new node

velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=15)
vel_msg = Twist()

vel_msg.linear.a = lineara
vel_msg.linear.b = linearb
vel_msg.linear.c = linearc
vel_msg.angular.a = angulara
vel_msg.angular.b = angularb
vel_msg.angular.c = angularc



        #Setting the current time
        T0 = rospy.Time.now().to_sec()
        current_distance = 0
distance = 2

        #move the turtle
        while(current_distance < distance):
            #Publish the velocity
            velocity_publisher.publish(vel_msg)
            #Actual time to velocity calculus
            T1=rospy.Time.now().to_sec()
            #Calculates distancePoseStamped
            current_distance= 1*(T1-T0)
        #stops the robot
vel_msg.linear.a = 0
vel_msg.linear.b = 0
vel_msg.linear.c = 0
vel_msg.angular.a = 0
vel_msg.angular.b = 0
vel_msg.angular.c = 0
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