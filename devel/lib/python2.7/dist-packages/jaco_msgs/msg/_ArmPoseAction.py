"""autogenerated by genpy from jaco_msgs/ArmPoseAction.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import jaco_msgs.msg
import geometry_msgs.msg
import genpy
import actionlib_msgs.msg
import std_msgs.msg

class ArmPoseAction(genpy.Message):
  _md5sum = "31667e565fbf24e6a0900ee01cdf7272"
  _type = "jaco_msgs/ArmPoseAction"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

ArmPoseActionGoal action_goal
ArmPoseActionResult action_result
ArmPoseActionFeedback action_feedback

================================================================================
MSG: jaco_msgs/ArmPoseActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
ArmPoseGoal goal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.secs: seconds (stamp_secs) since epoch
# * stamp.nsecs: nanoseconds since stamp_secs
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: jaco_msgs/ArmPoseGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Goal
geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: jaco_msgs/ArmPoseActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
ArmPoseResult result

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: jaco_msgs/ArmPoseResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Result
geometry_msgs/PoseStamped pose

================================================================================
MSG: jaco_msgs/ArmPoseActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
ArmPoseFeedback feedback

================================================================================
MSG: jaco_msgs/ArmPoseFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Feedback message
geometry_msgs/PoseStamped pose


"""
  __slots__ = ['action_goal','action_result','action_feedback']
  _slot_types = ['jaco_msgs/ArmPoseActionGoal','jaco_msgs/ArmPoseActionResult','jaco_msgs/ArmPoseActionFeedback']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       action_goal,action_result,action_feedback

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ArmPoseAction, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.action_goal is None:
        self.action_goal = jaco_msgs.msg.ArmPoseActionGoal()
      if self.action_result is None:
        self.action_result = jaco_msgs.msg.ArmPoseActionResult()
      if self.action_feedback is None:
        self.action_feedback = jaco_msgs.msg.ArmPoseActionFeedback()
    else:
      self.action_goal = jaco_msgs.msg.ArmPoseActionGoal()
      self.action_result = jaco_msgs.msg.ArmPoseActionResult()
      self.action_feedback = jaco_msgs.msg.ArmPoseActionFeedback()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs))
      _x = self.action_goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs))
      _x = self.action_goal.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.action_goal.goal.pose.header.seq, _x.action_goal.goal.pose.header.stamp.secs, _x.action_goal.goal.pose.header.stamp.nsecs))
      _x = self.action_goal.goal.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.action_goal.goal.pose.pose.position.x, _x.action_goal.goal.pose.pose.position.y, _x.action_goal.goal.pose.pose.position.z, _x.action_goal.goal.pose.pose.orientation.x, _x.action_goal.goal.pose.pose.orientation.y, _x.action_goal.goal.pose.pose.orientation.z, _x.action_goal.goal.pose.pose.orientation.w, _x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs))
      _x = self.action_result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs))
      _x = self.action_result.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_B.pack(self.action_result.status.status))
      _x = self.action_result.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.action_result.result.pose.header.seq, _x.action_result.result.pose.header.stamp.secs, _x.action_result.result.pose.header.stamp.nsecs))
      _x = self.action_result.result.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.action_result.result.pose.pose.position.x, _x.action_result.result.pose.pose.position.y, _x.action_result.result.pose.pose.position.z, _x.action_result.result.pose.pose.orientation.x, _x.action_result.result.pose.pose.orientation.y, _x.action_result.result.pose.pose.orientation.z, _x.action_result.result.pose.pose.orientation.w, _x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs))
      _x = self.action_feedback.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs))
      _x = self.action_feedback.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_B.pack(self.action_feedback.status.status))
      _x = self.action_feedback.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.action_feedback.feedback.pose.header.seq, _x.action_feedback.feedback.pose.header.stamp.secs, _x.action_feedback.feedback.pose.header.stamp.nsecs))
      _x = self.action_feedback.feedback.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.action_feedback.feedback.pose.pose.position.x, _x.action_feedback.feedback.pose.pose.position.y, _x.action_feedback.feedback.pose.pose.position.z, _x.action_feedback.feedback.pose.pose.orientation.x, _x.action_feedback.feedback.pose.pose.orientation.y, _x.action_feedback.feedback.pose.pose.orientation.z, _x.action_feedback.feedback.pose.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.action_goal is None:
        self.action_goal = jaco_msgs.msg.ArmPoseActionGoal()
      if self.action_result is None:
        self.action_result = jaco_msgs.msg.ArmPoseActionResult()
      if self.action_feedback is None:
        self.action_feedback = jaco_msgs.msg.ArmPoseActionFeedback()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_goal.goal_id.id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_goal.goal.pose.header.seq, _x.action_goal.goal.pose.header.stamp.secs, _x.action_goal.goal.pose.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_goal.goal.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.action_goal.goal.pose.pose.position.x, _x.action_goal.goal.pose.pose.position.y, _x.action_goal.goal.pose.pose.position.z, _x.action_goal.goal.pose.pose.orientation.x, _x.action_goal.goal.pose.pose.orientation.y, _x.action_goal.goal.pose.pose.orientation.z, _x.action_goal.goal.pose.pose.orientation.w, _x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_result.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_result.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_result.status.status,) = _struct_B.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.text = str[start:end].decode('utf-8')
      else:
        self.action_result.status.text = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_result.result.pose.header.seq, _x.action_result.result.pose.header.stamp.secs, _x.action_result.result.pose.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.result.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_result.result.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.action_result.result.pose.pose.position.x, _x.action_result.result.pose.pose.position.y, _x.action_result.result.pose.pose.position.z, _x.action_result.result.pose.pose.orientation.x, _x.action_result.result.pose.pose.orientation.y, _x.action_result.result.pose.pose.orientation.z, _x.action_result.result.pose.pose.orientation.w, _x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_feedback.status.status,) = _struct_B.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.text = str[start:end].decode('utf-8')
      else:
        self.action_feedback.status.text = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_feedback.feedback.pose.header.seq, _x.action_feedback.feedback.pose.header.stamp.secs, _x.action_feedback.feedback.pose.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.feedback.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.feedback.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.action_feedback.feedback.pose.pose.position.x, _x.action_feedback.feedback.pose.pose.position.y, _x.action_feedback.feedback.pose.pose.position.z, _x.action_feedback.feedback.pose.pose.orientation.x, _x.action_feedback.feedback.pose.pose.orientation.y, _x.action_feedback.feedback.pose.pose.orientation.z, _x.action_feedback.feedback.pose.pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs))
      _x = self.action_goal.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs))
      _x = self.action_goal.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.action_goal.goal.pose.header.seq, _x.action_goal.goal.pose.header.stamp.secs, _x.action_goal.goal.pose.header.stamp.nsecs))
      _x = self.action_goal.goal.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.action_goal.goal.pose.pose.position.x, _x.action_goal.goal.pose.pose.position.y, _x.action_goal.goal.pose.pose.position.z, _x.action_goal.goal.pose.pose.orientation.x, _x.action_goal.goal.pose.pose.orientation.y, _x.action_goal.goal.pose.pose.orientation.z, _x.action_goal.goal.pose.pose.orientation.w, _x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs))
      _x = self.action_result.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs))
      _x = self.action_result.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_B.pack(self.action_result.status.status))
      _x = self.action_result.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.action_result.result.pose.header.seq, _x.action_result.result.pose.header.stamp.secs, _x.action_result.result.pose.header.stamp.nsecs))
      _x = self.action_result.result.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.action_result.result.pose.pose.position.x, _x.action_result.result.pose.pose.position.y, _x.action_result.result.pose.pose.position.z, _x.action_result.result.pose.pose.orientation.x, _x.action_result.result.pose.pose.orientation.y, _x.action_result.result.pose.pose.orientation.z, _x.action_result.result.pose.pose.orientation.w, _x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs))
      _x = self.action_feedback.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs))
      _x = self.action_feedback.status.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_B.pack(self.action_feedback.status.status))
      _x = self.action_feedback.status.text
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3I.pack(_x.action_feedback.feedback.pose.header.seq, _x.action_feedback.feedback.pose.header.stamp.secs, _x.action_feedback.feedback.pose.header.stamp.nsecs))
      _x = self.action_feedback.feedback.pose.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.action_feedback.feedback.pose.pose.position.x, _x.action_feedback.feedback.pose.pose.position.y, _x.action_feedback.feedback.pose.pose.position.z, _x.action_feedback.feedback.pose.pose.orientation.x, _x.action_feedback.feedback.pose.pose.orientation.y, _x.action_feedback.feedback.pose.pose.orientation.z, _x.action_feedback.feedback.pose.pose.orientation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(_x))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(_x))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.action_goal is None:
        self.action_goal = jaco_msgs.msg.ArmPoseActionGoal()
      if self.action_result is None:
        self.action_result = jaco_msgs.msg.ArmPoseActionResult()
      if self.action_feedback is None:
        self.action_feedback = jaco_msgs.msg.ArmPoseActionFeedback()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.action_goal.header.seq, _x.action_goal.header.stamp.secs, _x.action_goal.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_goal.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_goal.goal_id.stamp.secs, _x.action_goal.goal_id.stamp.nsecs,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_goal.goal_id.id = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_goal.goal.pose.header.seq, _x.action_goal.goal.pose.header.stamp.secs, _x.action_goal.goal.pose.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_goal.goal.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_goal.goal.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.action_goal.goal.pose.pose.position.x, _x.action_goal.goal.pose.pose.position.y, _x.action_goal.goal.pose.pose.position.z, _x.action_goal.goal.pose.pose.orientation.x, _x.action_goal.goal.pose.pose.orientation.y, _x.action_goal.goal.pose.pose.orientation.z, _x.action_goal.goal.pose.pose.orientation.w, _x.action_result.header.seq, _x.action_result.header.stamp.secs, _x.action_result.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_result.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_result.status.goal_id.stamp.secs, _x.action_result.status.goal_id.stamp.nsecs,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_result.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_result.status.status,) = _struct_B.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.status.text = str[start:end].decode('utf-8')
      else:
        self.action_result.status.text = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_result.result.pose.header.seq, _x.action_result.result.pose.header.stamp.secs, _x.action_result.result.pose.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_result.result.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_result.result.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.action_result.result.pose.pose.position.x, _x.action_result.result.pose.pose.position.y, _x.action_result.result.pose.pose.position.z, _x.action_result.result.pose.pose.orientation.x, _x.action_result.result.pose.pose.orientation.y, _x.action_result.result.pose.pose.orientation.z, _x.action_result.result.pose.pose.orientation.w, _x.action_feedback.header.seq, _x.action_feedback.header.stamp.secs, _x.action_feedback.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.action_feedback.status.goal_id.stamp.secs, _x.action_feedback.status.goal_id.stamp.nsecs,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.status.goal_id.id = str[start:end]
      start = end
      end += 1
      (self.action_feedback.status.status,) = _struct_B.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.status.text = str[start:end].decode('utf-8')
      else:
        self.action_feedback.status.text = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.action_feedback.feedback.pose.header.seq, _x.action_feedback.feedback.pose.header.stamp.secs, _x.action_feedback.feedback.pose.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.action_feedback.feedback.pose.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.action_feedback.feedback.pose.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.action_feedback.feedback.pose.pose.position.x, _x.action_feedback.feedback.pose.pose.position.y, _x.action_feedback.feedback.pose.pose.position.z, _x.action_feedback.feedback.pose.pose.orientation.x, _x.action_feedback.feedback.pose.pose.orientation.y, _x.action_feedback.feedback.pose.pose.orientation.z, _x.action_feedback.feedback.pose.pose.orientation.w,) = _struct_7d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_B = struct.Struct("<B")
_struct_7d = struct.Struct("<7d")
_struct_2I = struct.Struct("<2I")
_struct_7d3I = struct.Struct("<7d3I")
