# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_basic: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iros_basic:/home/longfei/catkin_ws/src/ros_basic/msg;-Istd_msgs:/opt/ros/hydro/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_basic_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ros_basic
  "/home/longfei/catkin_ws/src/ros_basic/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basic
)

### Generating Services
_generate_srv_cpp(ros_basic
  "/home/longfei/catkin_ws/src/ros_basic/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basic
)

### Generating Module File
_generate_module_cpp(ros_basic
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basic
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_basic_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_basic_generate_messages ros_basic_generate_messages_cpp)

# target for backward compatibility
add_custom_target(ros_basic_gencpp)
add_dependencies(ros_basic_gencpp ros_basic_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_basic_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ros_basic
  "/home/longfei/catkin_ws/src/ros_basic/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basic
)

### Generating Services
_generate_srv_lisp(ros_basic
  "/home/longfei/catkin_ws/src/ros_basic/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basic
)

### Generating Module File
_generate_module_lisp(ros_basic
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basic
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_basic_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_basic_generate_messages ros_basic_generate_messages_lisp)

# target for backward compatibility
add_custom_target(ros_basic_genlisp)
add_dependencies(ros_basic_genlisp ros_basic_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_basic_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ros_basic
  "/home/longfei/catkin_ws/src/ros_basic/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basic
)

### Generating Services
_generate_srv_py(ros_basic
  "/home/longfei/catkin_ws/src/ros_basic/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basic
)

### Generating Module File
_generate_module_py(ros_basic
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basic
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_basic_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_basic_generate_messages ros_basic_generate_messages_py)

# target for backward compatibility
add_custom_target(ros_basic_genpy)
add_dependencies(ros_basic_genpy ros_basic_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_basic_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basic)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_basic
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_basic_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basic)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_basic
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(ros_basic_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basic)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basic\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_basic
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(ros_basic_generate_messages_py std_msgs_generate_messages_py)
