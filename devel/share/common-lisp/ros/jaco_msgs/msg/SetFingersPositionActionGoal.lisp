; Auto-generated. Do not edit!


(cl:in-package jaco_msgs-msg)


;//! \htmlinclude SetFingersPositionActionGoal.msg.html

(cl:defclass <SetFingersPositionActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type jaco_msgs-msg:SetFingersPositionGoal
    :initform (cl:make-instance 'jaco_msgs-msg:SetFingersPositionGoal)))
)

(cl:defclass SetFingersPositionActionGoal (<SetFingersPositionActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetFingersPositionActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetFingersPositionActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaco_msgs-msg:<SetFingersPositionActionGoal> is deprecated: use jaco_msgs-msg:SetFingersPositionActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SetFingersPositionActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_msgs-msg:header-val is deprecated.  Use jaco_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <SetFingersPositionActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_msgs-msg:goal_id-val is deprecated.  Use jaco_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <SetFingersPositionActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaco_msgs-msg:goal-val is deprecated.  Use jaco_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetFingersPositionActionGoal>) ostream)
  "Serializes a message object of type '<SetFingersPositionActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetFingersPositionActionGoal>) istream)
  "Deserializes a message object of type '<SetFingersPositionActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetFingersPositionActionGoal>)))
  "Returns string type for a message object of type '<SetFingersPositionActionGoal>"
  "jaco_msgs/SetFingersPositionActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetFingersPositionActionGoal)))
  "Returns string type for a message object of type 'SetFingersPositionActionGoal"
  "jaco_msgs/SetFingersPositionActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetFingersPositionActionGoal>)))
  "Returns md5sum for a message object of type '<SetFingersPositionActionGoal>"
  "03a27b43057751da237ef6f97e30dbf9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetFingersPositionActionGoal)))
  "Returns md5sum for a message object of type 'SetFingersPositionActionGoal"
  "03a27b43057751da237ef6f97e30dbf9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetFingersPositionActionGoal>)))
  "Returns full string definition for message of type '<SetFingersPositionActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%SetFingersPositionGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: jaco_msgs/SetFingersPositionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%FingerPosition fingers~%~%================================================================================~%MSG: jaco_msgs/FingerPosition~%float32 finger1~%float32 finger2~%float32 finger3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetFingersPositionActionGoal)))
  "Returns full string definition for message of type 'SetFingersPositionActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%SetFingersPositionGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: jaco_msgs/SetFingersPositionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Goal~%FingerPosition fingers~%~%================================================================================~%MSG: jaco_msgs/FingerPosition~%float32 finger1~%float32 finger2~%float32 finger3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetFingersPositionActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetFingersPositionActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'SetFingersPositionActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
