#!/usr/bin/env python

# RBE 500 - Foundations of Robotics

# pd_controller.py
# ROS node that reads the desired position of a prismatic joint from a service and calculates the necessary joint force to apply to the joint using a PD controller.

import rospy # ROS python library
import math # math library
import numpy as np # numpy library for arrays and matrices

from tf.transformations import euler_from_quaternion

from gazebo_msgs.srv import ApplyJointEffort
from gazebo_msgs.srv import GetJointProperties
from scara_pd_controller.srv import JointControlReference

debug = True
print_to_file = True

file1 = open("p_control_plot.txt","w")

d3 = 0.0
d3_des = 0.0
E_old = 0.0

kp = 1100.0
kd = 35.0

rate = 200.0

def rot_to_euler(R): # converts a 3x3 rotation matrix to ZYZ Euler angles
	phi = math.atan2(R[1,2],R[0,2])
	sphi = math.sin(phi)
	cphi = math.cos(phi)
	theta = math.atan2(cphi*R[0,2] + sphi*R[1,2], R[2,2])
	psi = math.atan2(-sphi*R[0,0] + cphi*R[1,0], -sphi*R[0,1] + cphi*R[1,1])

	eangles = np.array([phi, theta, psi])
	
	return eangles

def pd_control(joint, pos_cur, pos_des, kp, kd):
	global E_old

	E = pos_des - pos_cur
	d_err = (E - E_old)/(1/rate)
	f = -(kp*E + kd*d_err)

	if debug == True:
		print("\nerr = %f,  d_err = %f" % (E, d_err))
		print("\npos_des = %f, pos_cur = %f" % (pos_des, pos_cur))
		print("\nSending joint force f = [%f]" % (f)) # printing calculated values to terminal

	je_service = rospy.ServiceProxy('/gazebo/apply_joint_effort', ApplyJointEffort)
	zero_time = rospy.Time()
	tick = rospy.Duration(0, int((1/rate)*10**9))
	je_service(joint, f, zero_time, tick)

	if print_to_file == True:
		file1.write("%f,%f,%f,%f\n" % (pos_cur, pos_des,f,1/rate))

	E_old = E 

	return f

def request_joint_status(joint):
	global d3
	global d3_old

	joint_stauts = rospy.ServiceProxy('/gazebo/get_joint_properties', GetJointProperties)
	resp = joint_stauts(joint)
	
	d3 = -resp.position[0]

	if debug == True:
		print("\n\nReceived joint position: [%f] (d3) (meters)" % (d3)) # printing received data to terminal

	pd_control('joint5', d3, d3_des, kp, kd)
	
	return resp

def service_handle(data):
	global d3_des

	d3_des = data.d3_des

	if debug == True:
		print("\nReceived reference position d3 = %f]" % (d3_des)) # printing converted values to terminal

	if d3_des >= 0 or d3_des <=1:
		success = True
	else:
		success = False

	return success

def server(): # function that loops continuously waiting for incoming messages
    rospy.init_node('pd_control_svr') # initialize node
    
    ref_service = rospy.Service('/scara/JointControlReference', JointControlReference, service_handle)

    r = rospy.Rate(rate) # 10hz
    while not rospy.is_shutdown():
    	request_joint_status('joint5')
    	r.sleep()

if __name__ == '__main__': # run only if entry point to program (i.e. running from command line)
	server() # invoke server loop