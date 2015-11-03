# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotiq_force_torque_sensor: 1 messages, 1 services")

set(MSG_I_FLAGS "-Irobotiq_force_torque_sensor:/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_force_torque_sensor/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotiq_force_torque_sensor_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robotiq_force_torque_sensor
  "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_force_torque_sensor/msg/ft_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_force_torque_sensor
)

### Generating Services
_generate_srv_cpp(robotiq_force_torque_sensor
  "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_force_torque_sensor/srv/sensor_accessor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_force_torque_sensor
)

### Generating Module File
_generate_module_cpp(robotiq_force_torque_sensor
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_force_torque_sensor
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotiq_force_torque_sensor_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotiq_force_torque_sensor_generate_messages robotiq_force_torque_sensor_generate_messages_cpp)

# target for backward compatibility
add_custom_target(robotiq_force_torque_sensor_gencpp)
add_dependencies(robotiq_force_torque_sensor_gencpp robotiq_force_torque_sensor_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotiq_force_torque_sensor_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robotiq_force_torque_sensor
  "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_force_torque_sensor/msg/ft_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_force_torque_sensor
)

### Generating Services
_generate_srv_lisp(robotiq_force_torque_sensor
  "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_force_torque_sensor/srv/sensor_accessor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_force_torque_sensor
)

### Generating Module File
_generate_module_lisp(robotiq_force_torque_sensor
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_force_torque_sensor
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotiq_force_torque_sensor_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotiq_force_torque_sensor_generate_messages robotiq_force_torque_sensor_generate_messages_lisp)

# target for backward compatibility
add_custom_target(robotiq_force_torque_sensor_genlisp)
add_dependencies(robotiq_force_torque_sensor_genlisp robotiq_force_torque_sensor_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotiq_force_torque_sensor_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robotiq_force_torque_sensor
  "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_force_torque_sensor/msg/ft_sensor.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_force_torque_sensor
)

### Generating Services
_generate_srv_py(robotiq_force_torque_sensor
  "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_force_torque_sensor/srv/sensor_accessor.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_force_torque_sensor
)

### Generating Module File
_generate_module_py(robotiq_force_torque_sensor
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_force_torque_sensor
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotiq_force_torque_sensor_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotiq_force_torque_sensor_generate_messages robotiq_force_torque_sensor_generate_messages_py)

# target for backward compatibility
add_custom_target(robotiq_force_torque_sensor_genpy)
add_dependencies(robotiq_force_torque_sensor_genpy robotiq_force_torque_sensor_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotiq_force_torque_sensor_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_force_torque_sensor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_force_torque_sensor
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(robotiq_force_torque_sensor_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_force_torque_sensor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_force_torque_sensor
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(robotiq_force_torque_sensor_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_force_torque_sensor)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_force_torque_sensor\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_force_torque_sensor
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(robotiq_force_torque_sensor_generate_messages_py std_msgs_generate_messages_py)
