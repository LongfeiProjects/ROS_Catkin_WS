# generated from genmsg/cmake/pkg-msg-paths.cmake.em

# message include dirs in installspace
_prepend_path("${jaco_msgs_DIR}/.." "msg;msg;msg;msg" jaco_msgs_MSG_INCLUDE_DIRS UNIQUE)
set(jaco_msgs_MSG_DEPENDENCIES actionlib_msgs;geometry_msgs)
