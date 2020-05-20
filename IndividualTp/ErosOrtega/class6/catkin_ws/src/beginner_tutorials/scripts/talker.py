#!/usr/bin/env python
import rospy
import time
from std_msgs.msg import String

def talker():
    pub = rospy.Publisher('chatter', String, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(1) # 1hz
    while not rospy.is_shutdown():


            timeLoop = True

# Definition of variables
Sec = 0
Min = 0


while Min<9999999:
    Sec += 1
    print(str(Min) + " Mins " + str(Sec) + " Sec ")
    time.sleep(1)
    if Sec == 60:
        Sec = 0
        Min += 1
        print(str(Min) + " Mins" + str(Sec) + "Sec" )
       
rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
