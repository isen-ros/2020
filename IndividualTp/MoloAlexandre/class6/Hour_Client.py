#!/usr/bin/env python

import sys
import rospy
from Hour.srv import *
import time

def client(int x):
   rospy.wait_for_service('hour')
   try:
      time=rospy.ServiceProxy('heure',Hour)
      return (str(time.hour)+" : "+str(time.min)+" : "+str(time.sec)) 
   except rospy.SystemException, e:
      print "Service call failed: %s"%e
      
def usage():
   return "%s [x y]"%sys.argv[0]
   
if __name__=="__main__":
   while True:
      print "Time is being requested"
      print "Time is: %s"%client(1)
      time.sleep(1)
