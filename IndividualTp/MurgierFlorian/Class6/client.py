#!/usr/bin/env python
#author : Florian Murgier
import sys
import rospy
from beginner_tutorials.srv import *

def client(x):
	rospy.wait_for_service('add_two_ints')
	try:
		time = rospy.ServiceProxy('add_two_ints', AddTwoInts)
		resp = time(x)
		return resp
	except rospy.ServiceException, e:
		print "Service call failed: %s"%e


def usage():
    return "%s [x y]"%sys.argv[0]

if __name__ == "__main__":
#    if len(sys.argv) == 3:
#        x = int(sys.argv[1])
#        y = int(sys.argv[2])
#    else:
#        print usage()
#        sys.exit(1)
    while True :
    	x=1
    	print "Requesting Time"
    	print "Time is %s"%(client(x))


#Function from the ROS tutorial, does not impact the code here
#def add_two_ints_client(x, y):
#    rospy.wait_for_service('add_two_ints')
#    try:
#        add_two_ints = rospy.ServiceProxy('add_two_ints', AddTwoInts)
#        resp1 = add_two_ints(x, y)
#        return resp1.sum
#    except rospy.ServiceException, e:
#        print "Service call failed: %s"%e

