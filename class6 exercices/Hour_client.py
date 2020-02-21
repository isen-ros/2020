import sys
import rospy
from class_6.srv import *

def hour_client(x, y):

	    rospy.wait_for_service('hour')
	    try:
		Hour = rospy.ServiceProxy('hour', hour)
		resp1 = Hour(x)
		return resp1.hour
	    except rospy.ServiceException, e:
		print "Service call failed: %s"%e


def usage():
    return "%s [x y]"%sys.argv[0]

if __name__ == "__main__":

    while True :
	if len(sys.argv) == 3:
		x = int(sys.argv[1])
		y = int(sys.argv[2])
	else:
		print usage()
		sys.exit(1)
	print "hour : %s"%(hour_client(x, y))
    	rospy.sleep(1);