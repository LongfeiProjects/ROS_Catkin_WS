#!/usr/bin/env python
from numpy import radians, degrees
from numpy.linalg import norm
from tf.transformations import quaternion_about_axis
from tf.transformations import euler_from_quaternion
from tf.transformations import euler_matrix
from tf.transformations import rotation_from_matrix
from tf.transformations import _AXES2TUPLE

# script qui permet de valider comment ur passe de la representation
# rotation_vector a RPY

# rotation vector to RPY relative to UR base frame
vect = [radians(4.07), radians(-111.89), radians(-6.55)]
angle = norm(vect)
q_pose = quaternion_about_axis(angle, vect/angle)
#q_rot = [-0.5,0.5,-0.5,-0.5]
#q_pose = quaternion_multiply(q_pose, q_rot)
euler = euler_from_quaternion(q_pose)
print "RPY relative to fixed base : ", [degrees(x) for x in euler]

rx, ry, rz = euler
m = euler_matrix(rx, ry, rz)
angle, vect, point = rotation_from_matrix(m)
print angle, vect
print [degrees(x) for x in angle * vect] , point


for key in _AXES2TUPLE:
    #print key, euler_from_quaternion(q,key)
    euler = euler_from_quaternion(q_pose,key)
    #print key, [degrees(x) for x in euler]

