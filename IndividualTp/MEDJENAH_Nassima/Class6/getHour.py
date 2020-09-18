#!/usr/bin/env python

#Program by Nassima MEDJENAH
#This program is the node which consumes the service hour using RosPY

import rospy
from package.srv import *

print("Lancement")

rospy.init_node('client')
rospy.wait_for_service('hour')

rate = rospy.Rate(1)

while not rospy.is_shutdown():
	getHour = rospy.ServiceProxy('hour', hour)
	response = getHour()
	print("It's " + str(int(response.hours)) + ":" + str(int(response.mins)) + ":" + str(int(response.secs)) + " !")
	rate.sleep()