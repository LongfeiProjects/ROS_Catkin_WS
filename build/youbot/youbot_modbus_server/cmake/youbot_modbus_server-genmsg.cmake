# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "youbot_modbus_server: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(youbot_modbus_server_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(youbot_modbus_server
  "/home/longfei/catkin_ws/src/youbot/youbot_modbus_server/srv/YoubotModbusButtonMsg.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/youbot_modbus_server
)
_generate_srv_cpp(youbot_modbus_server
  "/home/longfei/catkin_ws/src/youbot/youbot_modbus_server/srv/YoubotModbusSensorMsg.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/youbot_modbus_server
)

### Generating Module File
_generate_module_cpp(youbot_modbus_server
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/youbot_modbus_server
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(youbot_modbus_server_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(youbot_modbus_server_generate_messages youbot_modbus_server_generate_messages_cpp)

# target for backward compatibility
add_custom_target(youbot_modbus_server_gencpp)
add_dependencies(youbot_modbus_server_gencpp youbot_modbus_server_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS youbot_modbus_server_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(youbot_modbus_server
  "/home/longfei/catkin_ws/src/youbot/youbot_modbus_server/srv/YoubotModbusButtonMsg.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/youbot_modbus_server
)
_generate_srv_lisp(youbot_modbus_server
  "/home/longfei/catkin_ws/src/youbot/youbot_modbus_server/srv/YoubotModbusSensorMsg.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/youbot_modbus_server
)

### Generating Module File
_generate_module_lisp(youbot_modbus_server
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/youbot_modbus_server
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(youbot_modbus_server_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(youbot_modbus_server_generate_messages youbot_modbus_server_generate_messages_lisp)

# target for backward compatibility
add_custom_target(youbot_modbus_server_genlisp)
add_dependencies(youbot_modbus_server_genlisp youbot_modbus_server_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS youbot_modbus_server_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(youbot_modbus_server
  "/home/longfei/catkin_ws/src/youbot/youbot_modbus_server/srv/YoubotModbusButtonMsg.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot_modbus_server
)
_generate_srv_py(youbot_modbus_server
  "/home/longfei/catkin_ws/src/youbot/youbot_modbus_server/srv/YoubotModbusSensorMsg.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/hydro/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot_modbus_server
)

### Generating Module File
_generate_module_py(youbot_modbus_server
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot_modbus_server
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(youbot_modbus_server_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(youbot_modbus_server_generate_messages youbot_modbus_server_generate_messages_py)

# target for backward compatibility
add_custom_target(youbot_modbus_server_genpy)
add_dependencies(youbot_modbus_server_genpy youbot_modbus_server_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS youbot_modbus_server_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/youbot_modbus_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/youbot_modbus_server
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(youbot_modbus_server_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/youbot_modbus_server)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/youbot_modbus_server
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(youbot_modbus_server_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot_modbus_server)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot_modbus_server\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot_modbus_server
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(youbot_modbus_server_generate_messages_py std_msgs_generate_messages_py)
