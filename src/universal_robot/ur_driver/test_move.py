#!/usr/bin/env python
import time
import roslib; roslib.load_manifest('ur_driver')
import rospy
import actionlib
import numpy
import math
from control_msgs.msg import *
from trajectory_msgs.msg import *
from geometry_msgs.msg import Pose
import tf_conversions.posemath as pm
import tf
from ur_msgs.msg import *
from math import radians, degrees
from tf.transformations import quaternion_from_euler
from ur_msgs.srv import *

JOINT_NAMES = ['shoulder_pan_joint', 'shoulder_lift_joint', 'elbow_joint',
               'wrist_1_joint', 'wrist_2_joint', 'wrist_3_joint']
Q1 = [2.2840557775406314, -2.1821911251949633, 1.756078592539284, -0.2643061362582615, -0.548405909172418, -0.7921884249811564]
Q2 = [2.2840557775406314, -2.6, 1.756078592539284, -0.2643061362582615, -0.548405909172418, -0.7921884249811564]
Q3 = [2.2840557775406314, -2.5, 1.756078592539284, -0.2643061362582615, -0.548405909172418, -0.7921884249811564]

client = None
client_movelin = None

def move1():
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES
    g.trajectory.points = [
        JointTrajectoryPoint(positions=Q1, velocities=[0]*6, time_from_start=rospy.Duration(2.0)),
        #JointTrajectoryPoint(positions=Q2, velocities=[0]*6, time_from_start=rospy.Duration(6.0)),
        JointTrajectoryPoint(positions=Q3, velocities=[0]*6, time_from_start=rospy.Duration(4.0))]
    client.send_goal(g)
    try:
        client.wait_for_result()
    except KeyboardInterrupt:
        client.cancel_goal()
        raise

def move_disordered():
    order = [4, 2, 3, 1, 5, 0]
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = [JOINT_NAMES[i] for i in order]
    q1 = [Q1[i] for i in order]
    q2 = [Q2[i] for i in order]
    q3 = [Q3[i] for i in order]
    g.trajectory.points = [
        JointTrajectoryPoint(positions=q1, velocities=[0]*6, time_from_start=rospy.Duration(2.0)),
        JointTrajectoryPoint(positions=q2, velocities=[0]*6, time_from_start=rospy.Duration(3.0)),
        JointTrajectoryPoint(positions=q3, velocities=[0]*6, time_from_start=rospy.Duration(4.0))]
    client.send_goal(g)
    client.wait_for_result()

def move_repeated():
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES

    d = 2.0
    g.trajectory.points = []
    for i in range(10):
        g.trajectory.points.append(
            JointTrajectoryPoint(positions=Q1, velocities=[0]*6, time_from_start=rospy.Duration(d)))
        d += 1
        g.trajectory.points.append(
            JointTrajectoryPoint(positions=Q2, velocities=[0]*6, time_from_start=rospy.Duration(d)))
        d += 1
        g.trajectory.points.append(
            JointTrajectoryPoint(positions=Q3, velocities=[0]*6, time_from_start=rospy.Duration(d)))
        d += 2
    client.send_goal(g)
    try:
        client.wait_for_result()
    except KeyboardInterrupt:
        client.cancel_goal()
        raise

def move_interrupt():
    g = FollowJointTrajectoryGoal()
    g.trajectory = JointTrajectory()
    g.trajectory.joint_names = JOINT_NAMES
    g.trajectory.points = [
        JointTrajectoryPoint(positions=Q1, velocities=[0]*6, time_from_start=rospy.Duration(4.0)),
        JointTrajectoryPoint(positions=Q2, velocities=[0]*6, time_from_start=rospy.Duration(6.0)),
        JointTrajectoryPoint(positions=Q3, velocities=[0]*6, time_from_start=rospy.Duration(8.0))]

    client.send_goal(g)
    time.sleep(2.0)
    print "Interrupting"
    client.send_goal(g)
    try:
        client.wait_for_result()
    except KeyboardInterrupt:
        client.cancel_goal()
        raise

def move_lin_from_q3():
    g = FollowCartesianTrajectoryGoal()
    g.header.frame_id = "base"
    p = Pose()
    p.position.x = -0.186
    p.position.y = -0.199
    p.position.z = 0.325
    q = quaternion_from_euler(radians(163),radians(-67),radians(-164))
    p.orientation.x =  q[0]
    p.orientation.y = q[1]
    p.orientation.z = q[2]
    p.orientation.w = q[3]
    g.poses.append(p)
    g.velocity = 0.1
    client_movelin.send_goal(g)
    try:
        client_movelin.wait_for_result()
    except KeyboardInterrupt:
        client_movelin.cancel_goal()
        raise

def openGripper():
    moveGripper(0, 255, 255)

def closeGripper():
    moveGripper(255, 255, 255)

def moveGripper(pos, force, speed):
    rospy.wait_for_service('gripper/move')
    try:
        move = rospy.ServiceProxy('gripper/move', GripperMove)
        response = move(pos, force, speed)
        print "has object = ", response.has_object
        print "success = ", response.success
    except rospy.ServiceException, e:
        print e

def main():
    global client
    global client_movelin
    try:
        rospy.init_node("test_move", anonymous=True, disable_signals=True)
        client = actionlib.SimpleActionClient('follow_joint_trajectory', FollowJointTrajectoryAction)
        print "Waiting for server..."
        client.wait_for_server()
        print "Connected to server"
        client_movelin = actionlib.SimpleActionClient('follow_cart_trajectory', FollowCartesianTrajectoryAction)
        print "Waiting for server..."
        client_movelin.wait_for_server()
        print "Connected to server"

        #move1()
        time.sleep(0.2)
        print "moving lin"
        #move_lin_from_q3()
        #move_repeated()
        #move_disordered()
        #move_interrupt()
        #closeGripper()
        #openGripper()
        #closeGripper()
        #openGripper()
        closeGripper()
        openGripper()
    except KeyboardInterrupt:
        rospy.signal_shutdown("KeyboardInterrupt")
        raise

if __name__ == '__main__': main()
