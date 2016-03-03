# Install script for directory: /home/longfei/catkin_ws/src/kinova-ros/jaco_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/longfei/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jaco_msgs/msg" TYPE FILE FILES
    "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/FingerPosition.msg"
    "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointAngles.msg"
    "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/msg/JointVelocity.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jaco_msgs/srv" TYPE FILE FILES
    "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/Start.srv"
    "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/Stop.srv"
    "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/HomeArm.srv"
    "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/srv/SetForceControlParams.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jaco_msgs/action" TYPE FILE FILES
    "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/action/ArmJointAngles.action"
    "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/action/ArmPose.action"
    "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/action/SetFingersPosition.action"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jaco_msgs/msg" TYPE FILE FILES
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesAction.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionGoal.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionResult.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesActionFeedback.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesGoal.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesResult.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmJointAnglesFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jaco_msgs/msg" TYPE FILE FILES
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseAction.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionGoal.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionResult.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseActionFeedback.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseGoal.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseResult.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/ArmPoseFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jaco_msgs/msg" TYPE FILE FILES
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionAction.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionGoal.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionResult.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionActionFeedback.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionGoal.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionResult.msg"
    "/home/longfei/catkin_ws/devel/share/jaco_msgs/msg/SetFingersPositionFeedback.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jaco_msgs/cmake" TYPE FILE FILES "/home/longfei/catkin_ws/build/kinova-ros/jaco_msgs/catkin_generated/installspace/jaco_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/longfei/catkin_ws/devel/include/jaco_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/longfei/catkin_ws/devel/share/common-lisp/ros/jaco_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/longfei/catkin_ws/devel/lib/python2.7/dist-packages/jaco_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/longfei/catkin_ws/devel/lib/python2.7/dist-packages/jaco_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/longfei/catkin_ws/build/kinova-ros/jaco_msgs/catkin_generated/installspace/jaco_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jaco_msgs/cmake" TYPE FILE FILES "/home/longfei/catkin_ws/build/kinova-ros/jaco_msgs/catkin_generated/installspace/jaco_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jaco_msgs/cmake" TYPE FILE FILES
    "/home/longfei/catkin_ws/build/kinova-ros/jaco_msgs/catkin_generated/installspace/jaco_msgsConfig.cmake"
    "/home/longfei/catkin_ws/build/kinova-ros/jaco_msgs/catkin_generated/installspace/jaco_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jaco_msgs" TYPE FILE FILES "/home/longfei/catkin_ws/src/kinova-ros/jaco_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

