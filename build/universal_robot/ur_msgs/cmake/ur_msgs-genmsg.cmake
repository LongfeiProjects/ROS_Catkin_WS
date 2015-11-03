# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ur_msgs: 12 messages, 3 services")

set(MSG_I_FLAGS "-Iur_msgs:/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg;-Iur_msgs:/home/longfei/catkin_ws/devel/share/ur_msgs/msg;-Igeometry_msgs:/opt/ros/hydro/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/hydro/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ur_msgs_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/RobotStateRTMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/IOStates.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg;/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryGoal.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionGoal.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionResult.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionFeedback.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryGoal.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_msg_cpp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/MasterboardDataMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)

### Generating Services
_generate_srv_cpp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/srv/GripperMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_srv_cpp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)
_generate_srv_cpp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
)

### Generating Module File
_generate_module_cpp(ur_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ur_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ur_msgs_generate_messages ur_msgs_generate_messages_cpp)

# target for backward compatibility
add_custom_target(ur_msgs_gencpp)
add_dependencies(ur_msgs_gencpp ur_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/RobotStateRTMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/IOStates.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg;/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryGoal.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionGoal.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionResult.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionFeedback.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryGoal.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_msg_lisp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/MasterboardDataMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)

### Generating Services
_generate_srv_lisp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/srv/GripperMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_srv_lisp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)
_generate_srv_lisp(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
)

### Generating Module File
_generate_module_lisp(ur_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ur_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ur_msgs_generate_messages ur_msgs_generate_messages_lisp)

# target for backward compatibility
add_custom_target(ur_msgs_genlisp)
add_dependencies(ur_msgs_genlisp ur_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/RobotStateRTMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/IOStates.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/Digital.msg;/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryAction.msg"
  "${MSG_I_FLAGS}"
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryGoal.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionGoal.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionResult.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionFeedback.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryGoal.msg;/opt/ros/hydro/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryResult.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg;/home/longfei/catkin_ws/devel/share/ur_msgs/msg/FollowCartesianTrajectoryFeedback.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/hydro/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/Analog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_msg_py(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/msg/MasterboardDataMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)

### Generating Services
_generate_srv_py(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/srv/GripperMove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_srv_py(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/srv/SetPayload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)
_generate_srv_py(ur_msgs
  "/home/longfei/catkin_ws/src/universal_robot/ur_msgs/srv/SetIO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
)

### Generating Module File
_generate_module_py(ur_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ur_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ur_msgs_generate_messages ur_msgs_generate_messages_py)

# target for backward compatibility
add_custom_target(ur_msgs_genpy)
add_dependencies(ur_msgs_genpy ur_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ur_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ur_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(ur_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(ur_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(ur_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ur_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(ur_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(ur_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(ur_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ur_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(ur_msgs_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(ur_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(ur_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
