# generated from genmsg/cmake/pkg-msg-paths.cmake.em

# message include dirs in installspace
_prepend_path("${pr2_gazebo_plugins_DIR}/.." "msg" pr2_gazebo_plugins_MSG_INCLUDE_DIRS UNIQUE)
set(pr2_gazebo_plugins_MSG_DEPENDENCIES std_msgs;nav_msgs;sensor_msgs;pr2_msgs;geometry_msgs;diagnostic_msgs)
