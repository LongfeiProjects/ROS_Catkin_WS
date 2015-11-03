# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotiq_s_model_control: 2 messages, 0 services")

set(MSG_I_FLAGS "-Irobotiq_s_model_control:/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_s_model_control/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotiq_s_model_control_generate_messages ALL)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robotiq_s_model_control
  "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_s_model_control/msg/SModel_robot_output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_s_model_control
)
_generate_msg_cpp(robotiq_s_model_control
  "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_s_model_control/msg/SModel_robot_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_s_model_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(robotiq_s_model_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_s_model_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotiq_s_model_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotiq_s_model_control_generate_messages robotiq_s_model_control_generate_messages_cpp)

# target for backward compatibility
add_custom_target(robotiq_s_model_control_gencpp)
add_dependencies(robotiq_s_model_control_gencpp robotiq_s_model_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotiq_s_model_control_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robotiq_s_model_control
  "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_s_model_control/msg/SModel_robot_output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_s_model_control
)
_generate_msg_lisp(robotiq_s_model_control
  "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_s_model_control/msg/SModel_robot_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_s_model_control
)

### Generating Services

### Generating Module File
_generate_module_lisp(robotiq_s_model_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_s_model_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotiq_s_model_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotiq_s_model_control_generate_messages robotiq_s_model_control_generate_messages_lisp)

# target for backward compatibility
add_custom_target(robotiq_s_model_control_genlisp)
add_dependencies(robotiq_s_model_control_genlisp robotiq_s_model_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotiq_s_model_control_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robotiq_s_model_control
  "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_s_model_control/msg/SModel_robot_output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_s_model_control
)
_generate_msg_py(robotiq_s_model_control
  "/home/longfei/catkin_ws/src/robotiq-hydro-devel/robotiq_s_model_control/msg/SModel_robot_input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_s_model_control
)

### Generating Services

### Generating Module File
_generate_module_py(robotiq_s_model_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_s_model_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotiq_s_model_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotiq_s_model_control_generate_messages robotiq_s_model_control_generate_messages_py)

# target for backward compatibility
add_custom_target(robotiq_s_model_control_genpy)
add_dependencies(robotiq_s_model_control_genpy robotiq_s_model_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotiq_s_model_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_s_model_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotiq_s_model_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_s_model_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotiq_s_model_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_s_model_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_s_model_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_s_model_control
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_s_model_control
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotiq_s_model_control/.+/__init__.pyc?$"
  )
endif()
