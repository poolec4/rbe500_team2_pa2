#!/usr/bin/env python

# RBE 500 - Foundations of Robotics
# Written by: 

# pd_controller.py
# ROS node that reads the desired position of a prismatic joint from a service and calculates the necessary joint force to apply to the joint using a PD controller.

import rospy # ROS python library
import math # math library
import numpy as np # numpy library for arrays and matrices

from tf.transformations import euler_from_quaternion

from sensor_msgs.msg import JointState
from gazebo_msgs.msg import ApplyJointEffort
from pd_controller.srv import JointControlReference

debug = True

d1 = 3.5
l1 = 2 
l2 = 1 

def rot_to_euler(R): # converts a 3x3 rotation matrix to ZYZ Euler angles
	phi = math.atan2(R[1,2],R[0,2])
	sphi = math.sin(phi)
	cphi = math.cos(phi)
	theta = math.atan2(cphi*R[0,2] + sphi*R[1,2], R[2,2])
	psi = math.atan2(-sphi*R[0,0] + cphi*R[1,0], -sphi*R[0,1] + cphi*R[1,1])

	eangles = np.array([phi, theta, psi])
	
	return eangles

def pd_control(pos_cur, pos_des, kp, kd)

	# add in controller equation here
	
	if debug == True:
		print("\nSending joint force f = %f]" % (f)) # printing calculated values to terminal

	je_service = rospy.ServiceProxy('/gazebo_msgs/ApplyJointEffort', ApplyJointEffort) # initialize subscriber under /scara_robot/joint_states topic name, JointState as the message, and the service_handle function
	je_service(f)

	return f

def callback(data):
	th1 = data.position[0] # extract message data
	th2 = data.position[1]
	d3 = data.position[2]

	if debug == True:
		print("\n\nReceived joint parameters: [%f, %f, %f] (th1,th2,d3) (radians, meters)" % (th1,th2,d3)) # printing received data to terminal

	q = np.array([th1,th2,d3]) # combine joint configurations into array (radians, meters) 


	pd_control(d3, d3_des, kp, kd)

def service_handle(data):
	if debug == True:
		print("\nReceived reference position d3 = %f]" % (d3_des)) # printing converted values to terminal



	if d3_des >= 0 or d3_des <=1:
		success = True
	else:
		success = False

	return success

def server(): # function that loops continuously waiting for incoming messages
    rospy.init_node('pd_control_svr') # initialize node
    rospy.Subscriber('/scara/joint_states', JointState, callback) # initialize subscriber under /scara_robot/joint_states topic name, JointState as the message, and the callback function
    ref_service = rospy.Service('/scara/JointControlReference', JointControlReference, service_handle)

    rospy.spin() # keep node running

if __name__ == '__main__': # run only if entry point to program (i.e. running from command line)
	server() # invoke server loop