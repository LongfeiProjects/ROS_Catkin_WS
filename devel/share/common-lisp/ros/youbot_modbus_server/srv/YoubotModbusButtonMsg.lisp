; Auto-generated. Do not edit!


(cl:in-package youbot_modbus_server-srv)


;//! \htmlinclude YoubotModbusButtonMsg-request.msg.html

(cl:defclass <YoubotModbusButtonMsg-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass YoubotModbusButtonMsg-request (<YoubotModbusButtonMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YoubotModbusButtonMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YoubotModbusButtonMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name youbot_modbus_server-srv:<YoubotModbusButtonMsg-request> is deprecated: use youbot_modbus_server-srv:YoubotModbusButtonMsg-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <YoubotModbusButtonMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:header-val is deprecated.  Use youbot_modbus_server-srv:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YoubotModbusButtonMsg-request>) ostream)
  "Serializes a message object of type '<YoubotModbusButtonMsg-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YoubotModbusButtonMsg-request>) istream)
  "Deserializes a message object of type '<YoubotModbusButtonMsg-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YoubotModbusButtonMsg-request>)))
  "Returns string type for a service object of type '<YoubotModbusButtonMsg-request>"
  "youbot_modbus_server/YoubotModbusButtonMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoubotModbusButtonMsg-request)))
  "Returns string type for a service object of type 'YoubotModbusButtonMsg-request"
  "youbot_modbus_server/YoubotModbusButtonMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YoubotModbusButtonMsg-request>)))
  "Returns md5sum for a message object of type '<YoubotModbusButtonMsg-request>"
  "60c5351e0a2f691783ac8ca79b3eed06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YoubotModbusButtonMsg-request)))
  "Returns md5sum for a message object of type 'YoubotModbusButtonMsg-request"
  "60c5351e0a2f691783ac8ca79b3eed06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YoubotModbusButtonMsg-request>)))
  "Returns full string definition for message of type '<YoubotModbusButtonMsg-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YoubotModbusButtonMsg-request)))
  "Returns full string definition for message of type 'YoubotModbusButtonMsg-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YoubotModbusButtonMsg-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YoubotModbusButtonMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'YoubotModbusButtonMsg-request
    (cl:cons ':header (header msg))
))
;//! \htmlinclude YoubotModbusButtonMsg-response.msg.html

(cl:defclass <YoubotModbusButtonMsg-response> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data_validity
    :reader data_validity
    :initarg :data_validity
    :type cl:boolean
    :initform cl:nil)
   (estop_button_status
    :reader estop_button_status
    :initarg :estop_button_status
    :type cl:fixnum
    :initform 0)
   (estop_indicator_status
    :reader estop_indicator_status
    :initarg :estop_indicator_status
    :type cl:fixnum
    :initform 0)
   (yellow_button_status
    :reader yellow_button_status
    :initarg :yellow_button_status
    :type cl:fixnum
    :initform 0)
   (yellow_indicator_status
    :reader yellow_indicator_status
    :initarg :yellow_indicator_status
    :type cl:fixnum
    :initform 0)
   (green_button_status
    :reader green_button_status
    :initarg :green_button_status
    :type cl:fixnum
    :initform 0)
   (green_indicator_status
    :reader green_indicator_status
    :initarg :green_indicator_status
    :type cl:fixnum
    :initform 0)
   (runstop_switch_status
    :reader runstop_switch_status
    :initarg :runstop_switch_status
    :type cl:fixnum
    :initform 0)
   (runstop_indicator_status
    :reader runstop_indicator_status
    :initarg :runstop_indicator_status
    :type cl:fixnum
    :initform 0)
   (supervisor_runstop_status
    :reader supervisor_runstop_status
    :initarg :supervisor_runstop_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass YoubotModbusButtonMsg-response (<YoubotModbusButtonMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YoubotModbusButtonMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YoubotModbusButtonMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name youbot_modbus_server-srv:<YoubotModbusButtonMsg-response> is deprecated: use youbot_modbus_server-srv:YoubotModbusButtonMsg-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <YoubotModbusButtonMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:header-val is deprecated.  Use youbot_modbus_server-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'data_validity-val :lambda-list '(m))
(cl:defmethod data_validity-val ((m <YoubotModbusButtonMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:data_validity-val is deprecated.  Use youbot_modbus_server-srv:data_validity instead.")
  (data_validity m))

(cl:ensure-generic-function 'estop_button_status-val :lambda-list '(m))
(cl:defmethod estop_button_status-val ((m <YoubotModbusButtonMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:estop_button_status-val is deprecated.  Use youbot_modbus_server-srv:estop_button_status instead.")
  (estop_button_status m))

(cl:ensure-generic-function 'estop_indicator_status-val :lambda-list '(m))
(cl:defmethod estop_indicator_status-val ((m <YoubotModbusButtonMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:estop_indicator_status-val is deprecated.  Use youbot_modbus_server-srv:estop_indicator_status instead.")
  (estop_indicator_status m))

(cl:ensure-generic-function 'yellow_button_status-val :lambda-list '(m))
(cl:defmethod yellow_button_status-val ((m <YoubotModbusButtonMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:yellow_button_status-val is deprecated.  Use youbot_modbus_server-srv:yellow_button_status instead.")
  (yellow_button_status m))

(cl:ensure-generic-function 'yellow_indicator_status-val :lambda-list '(m))
(cl:defmethod yellow_indicator_status-val ((m <YoubotModbusButtonMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:yellow_indicator_status-val is deprecated.  Use youbot_modbus_server-srv:yellow_indicator_status instead.")
  (yellow_indicator_status m))

(cl:ensure-generic-function 'green_button_status-val :lambda-list '(m))
(cl:defmethod green_button_status-val ((m <YoubotModbusButtonMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:green_button_status-val is deprecated.  Use youbot_modbus_server-srv:green_button_status instead.")
  (green_button_status m))

(cl:ensure-generic-function 'green_indicator_status-val :lambda-list '(m))
(cl:defmethod green_indicator_status-val ((m <YoubotModbusButtonMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:green_indicator_status-val is deprecated.  Use youbot_modbus_server-srv:green_indicator_status instead.")
  (green_indicator_status m))

(cl:ensure-generic-function 'runstop_switch_status-val :lambda-list '(m))
(cl:defmethod runstop_switch_status-val ((m <YoubotModbusButtonMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:runstop_switch_status-val is deprecated.  Use youbot_modbus_server-srv:runstop_switch_status instead.")
  (runstop_switch_status m))

(cl:ensure-generic-function 'runstop_indicator_status-val :lambda-list '(m))
(cl:defmethod runstop_indicator_status-val ((m <YoubotModbusButtonMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:runstop_indicator_status-val is deprecated.  Use youbot_modbus_server-srv:runstop_indicator_status instead.")
  (runstop_indicator_status m))

(cl:ensure-generic-function 'supervisor_runstop_status-val :lambda-list '(m))
(cl:defmethod supervisor_runstop_status-val ((m <YoubotModbusButtonMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:supervisor_runstop_status-val is deprecated.  Use youbot_modbus_server-srv:supervisor_runstop_status instead.")
  (supervisor_runstop_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YoubotModbusButtonMsg-response>) ostream)
  "Serializes a message object of type '<YoubotModbusButtonMsg-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data_validity) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'estop_button_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'estop_indicator_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yellow_button_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yellow_indicator_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'green_button_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'green_indicator_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'runstop_switch_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'runstop_indicator_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'supervisor_runstop_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YoubotModbusButtonMsg-response>) istream)
  "Deserializes a message object of type '<YoubotModbusButtonMsg-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'data_validity) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'estop_button_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'estop_indicator_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yellow_button_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yellow_indicator_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'green_button_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'green_indicator_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'runstop_switch_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'runstop_indicator_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'supervisor_runstop_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YoubotModbusButtonMsg-response>)))
  "Returns string type for a service object of type '<YoubotModbusButtonMsg-response>"
  "youbot_modbus_server/YoubotModbusButtonMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoubotModbusButtonMsg-response)))
  "Returns string type for a service object of type 'YoubotModbusButtonMsg-response"
  "youbot_modbus_server/YoubotModbusButtonMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YoubotModbusButtonMsg-response>)))
  "Returns md5sum for a message object of type '<YoubotModbusButtonMsg-response>"
  "60c5351e0a2f691783ac8ca79b3eed06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YoubotModbusButtonMsg-response)))
  "Returns md5sum for a message object of type 'YoubotModbusButtonMsg-response"
  "60c5351e0a2f691783ac8ca79b3eed06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YoubotModbusButtonMsg-response>)))
  "Returns full string definition for message of type '<YoubotModbusButtonMsg-response>"
  (cl:format cl:nil "Header header~%bool data_validity~%int8 estop_button_status~%int8 estop_indicator_status~%int8 yellow_button_status~%int8 yellow_indicator_status~%int8 green_button_status~%int8 green_indicator_status~%int8 runstop_switch_status~%int8 runstop_indicator_status~%int8 supervisor_runstop_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YoubotModbusButtonMsg-response)))
  "Returns full string definition for message of type 'YoubotModbusButtonMsg-response"
  (cl:format cl:nil "Header header~%bool data_validity~%int8 estop_button_status~%int8 estop_indicator_status~%int8 yellow_button_status~%int8 yellow_indicator_status~%int8 green_button_status~%int8 green_indicator_status~%int8 runstop_switch_status~%int8 runstop_indicator_status~%int8 supervisor_runstop_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YoubotModbusButtonMsg-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YoubotModbusButtonMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'YoubotModbusButtonMsg-response
    (cl:cons ':header (header msg))
    (cl:cons ':data_validity (data_validity msg))
    (cl:cons ':estop_button_status (estop_button_status msg))
    (cl:cons ':estop_indicator_status (estop_indicator_status msg))
    (cl:cons ':yellow_button_status (yellow_button_status msg))
    (cl:cons ':yellow_indicator_status (yellow_indicator_status msg))
    (cl:cons ':green_button_status (green_button_status msg))
    (cl:cons ':green_indicator_status (green_indicator_status msg))
    (cl:cons ':runstop_switch_status (runstop_switch_status msg))
    (cl:cons ':runstop_indicator_status (runstop_indicator_status msg))
    (cl:cons ':supervisor_runstop_status (supervisor_runstop_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'YoubotModbusButtonMsg)))
  'YoubotModbusButtonMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'YoubotModbusButtonMsg)))
  'YoubotModbusButtonMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoubotModbusButtonMsg)))
  "Returns string type for a service object of type '<YoubotModbusButtonMsg>"
  "youbot_modbus_server/YoubotModbusButtonMsg")