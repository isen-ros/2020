#!/usr/bin/python
import sys
import rospy
import time
from Class_6.srv import *

def getTime():
    rospy.wait_for_service('hour')
    try:
        time = rospy.ServiceProxy('hour', hour)
        resp1 = time()
        return resp1
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

if __name__ == "__main__":
    while True:
        print "%s"%(getTime())
        time.sleep(1)