# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jaco_msgs: 24 messages, 4 services")

set(MSG_I_FLAGS "-Ijaco_msgs:/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg;-Ijaco_msgs:/home/longfei/catkin_ws/devel/share/jaco_msgs/msg;-Iactionlib_msgs:/opt/ros/hydro/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jaco_msgs_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseResult.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionResult.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionGoal.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionFeedback.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesFeedback.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionGoal.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesGoal.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesResult.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionResult.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesGoal.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseResult.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionResult.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionFeedback.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesFeedback.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseGoal.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionResult.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionFeedback.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionGoal.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionResult.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesResult.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionGoal.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_cpp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesResult.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)

### Generating Services
_generate_srv_cpp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/HomeArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_srv_cpp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/SetForceControlParams.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_srv_cpp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/Start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)
_generate_srv_cpp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
)

### Generating Module File
_generate_module_cpp(jaco_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jaco_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jaco_msgs_generate_messages jaco_msgs_generate_messages_cpp)

# target for backward compatibility
add_custom_target(jaco_msgs_gencpp)
add_dependencies(jaco_msgs_gencpp jaco_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseResult.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionResult.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionGoal.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionFeedback.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesFeedback.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionGoal.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesGoal.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesResult.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionResult.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesGoal.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseResult.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionResult.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionFeedback.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesFeedback.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseGoal.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionResult.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionFeedback.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionGoal.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionResult.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesResult.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionGoal.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_msg_lisp(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesResult.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)

### Generating Services
_generate_srv_lisp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/HomeArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_srv_lisp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/SetForceControlParams.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_srv_lisp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/Start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)
_generate_srv_lisp(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
)

### Generating Module File
_generate_module_lisp(jaco_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jaco_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jaco_msgs_generate_messages jaco_msgs_generate_messages_lisp)

# target for backward compatibility
add_custom_target(jaco_msgs_genlisp)
add_dependencies(jaco_msgs_genlisp jaco_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseAction.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseResult.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionResult.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionGoal.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionFeedback.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesFeedback.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionGoal.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesGoal.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesResult.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionResult.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesGoal.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseResult.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointVelocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionResult.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionFeedback.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesFeedback.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseGoal.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionAction.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionResult.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionGoal.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionFeedback.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionGoal.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionResult.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesResult.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionGoal.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_msg_py(jaco_msgs
  "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesResult.msg;/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)

### Generating Services
_generate_srv_py(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/HomeArm.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_srv_py(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/SetForceControlParams.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_srv_py(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/Start.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)
_generate_srv_py(jaco_msgs
  "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/Stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
)

### Generating Module File
_generate_module_py(jaco_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jaco_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jaco_msgs_generate_messages jaco_msgs_generate_messages_py)

# target for backward compatibility
add_custom_target(jaco_msgs_genpy)
add_dependencies(jaco_msgs_genpy jaco_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jaco_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jaco_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(jaco_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
add_dependencies(jaco_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jaco_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(jaco_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
add_dependencies(jaco_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jaco_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(jaco_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
add_dependencies(jaco_msgs_generate_messages_py geometry_msgs_generate_messages_py)
