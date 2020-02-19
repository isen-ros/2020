#!/usr/bin/env python

import sys
import rospy


def display_hour():
    rospy.wait_for_service('display_hour')
    try:
        display_hour = rospy.ServiceProxy('display_hour', display_hour)
        now=rospy.Time.now()
        return now
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e


if __name__ == "__main__":
    rate = rospy.Rate(1) # AFFICHAGE CHAQUE SECONDE ,1 HZ
    print "il est :"%(display_hour())
