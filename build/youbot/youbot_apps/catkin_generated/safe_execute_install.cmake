execute_process(COMMAND "/home/longfei/catkin_ws/build/youbot/youbot_apps/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/longfei/catkin_ws/build/youbot/youbot_apps/catkin_generated/python_distutils_install.sh) returned error code ")
endif()