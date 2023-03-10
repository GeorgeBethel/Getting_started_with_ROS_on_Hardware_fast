#!/usr/bin/env python

import rospy
import random
from led_control.msg import led

led_state = led()
states = [True,False]


def PublishLedState():

	state_pub = rospy.Publisher("led_state", led, queue_size = 10)
	rospy.init_node("led_control", anonymous=False)
	rate = rospy.Rate(2)

	while not rospy.is_shutdown():

		state = int(raw_input("please enter the desired state: [1 for on, 0 for off]: "))
		if state == 1:
		
			led_state.ledState = True

		elif state == 0:

			led_state.ledState = False

		state_pub.publish(led_state)
		rospy.loginfo(state)
		rate.sleep()

if __name__ == "__main__":

	try:

		PublishLedState()

	except rospy.ROSInterruptException:

		pass
