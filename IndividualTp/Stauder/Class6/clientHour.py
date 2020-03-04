#!/usr/bin/env python

#Program by Corentin STAUDER

import rospy
from exercice_corentin.srv import *


def hour():
	rospy.init_node('Client')
	rospy.wait_for_service('serviceHour')
	try:
		r = rospy.Rate(1)
		while not rospy.is_shutdown():
			hour = rospy.ServiceProxy('serviceHour', serviceHour)
			response = hour()

			heure = response.hours
			minutes = response.minutes
			secondes = response.seconds

			print("It's " + str(heure) + " h " + str(minutes) + " mins and " + str(secondes) + " seconds" )
			r.sleep()
	except rospy.ServiceException, e:
		print "Service call failed"


if __name__ == "__main__":
    print "Requesting hour"
    hour()
