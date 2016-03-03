; Auto-generated. Do not edit!


(cl:in-package youbot_modbus_server-srv)


;//! \htmlinclude YoubotModbusSensorMsg-request.msg.html

(cl:defclass <YoubotModbusSensorMsg-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header)))
)

(cl:defclass YoubotModbusSensorMsg-request (<YoubotModbusSensorMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YoubotModbusSensorMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YoubotModbusSensorMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name youbot_modbus_server-srv:<YoubotModbusSensorMsg-request> is deprecated: use youbot_modbus_server-srv:YoubotModbusSensorMsg-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <YoubotModbusSensorMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:header-val is deprecated.  Use youbot_modbus_server-srv:header instead.")
  (header m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YoubotModbusSensorMsg-request>) ostream)
  "Serializes a message object of type '<YoubotModbusSensorMsg-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YoubotModbusSensorMsg-request>) istream)
  "Deserializes a message object of type '<YoubotModbusSensorMsg-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YoubotModbusSensorMsg-request>)))
  "Returns string type for a service object of type '<YoubotModbusSensorMsg-request>"
  "youbot_modbus_server/YoubotModbusSensorMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoubotModbusSensorMsg-request)))
  "Returns string type for a service object of type 'YoubotModbusSensorMsg-request"
  "youbot_modbus_server/YoubotModbusSensorMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YoubotModbusSensorMsg-request>)))
  "Returns md5sum for a message object of type '<YoubotModbusSensorMsg-request>"
  "7ad9b1a6015e5561b08e8a3bbd95c7ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YoubotModbusSensorMsg-request)))
  "Returns md5sum for a message object of type 'YoubotModbusSensorMsg-request"
  "7ad9b1a6015e5561b08e8a3bbd95c7ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YoubotModbusSensorMsg-request>)))
  "Returns full string definition for message of type '<YoubotModbusSensorMsg-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YoubotModbusSensorMsg-request)))
  "Returns full string definition for message of type 'YoubotModbusSensorMsg-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%~%Header header~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YoubotModbusSensorMsg-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YoubotModbusSensorMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'YoubotModbusSensorMsg-request
    (cl:cons ':header (header msg))
))
;//! \htmlinclude YoubotModbusSensorMsg-response.msg.html

(cl:defclass <YoubotModbusSensorMsg-response> (roslisp-msg-protocol:ros-message)
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
   (station_1_status
    :reader station_1_status
    :initarg :station_1_status
    :type cl:fixnum
    :initform 0)
   (station_2_status
    :reader station_2_status
    :initarg :station_2_status
    :type cl:fixnum
    :initform 0)
   (station_3_status
    :reader station_3_status
    :initarg :station_3_status
    :type cl:fixnum
    :initform 0)
   (station_4_status
    :reader station_4_status
    :initarg :station_4_status
    :type cl:fixnum
    :initform 0)
   (station_5_status
    :reader station_5_status
    :initarg :station_5_status
    :type cl:fixnum
    :initform 0)
   (station_6_status
    :reader station_6_status
    :initarg :station_6_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass YoubotModbusSensorMsg-response (<YoubotModbusSensorMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YoubotModbusSensorMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YoubotModbusSensorMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name youbot_modbus_server-srv:<YoubotModbusSensorMsg-response> is deprecated: use youbot_modbus_server-srv:YoubotModbusSensorMsg-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <YoubotModbusSensorMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:header-val is deprecated.  Use youbot_modbus_server-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'data_validity-val :lambda-list '(m))
(cl:defmethod data_validity-val ((m <YoubotModbusSensorMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:data_validity-val is deprecated.  Use youbot_modbus_server-srv:data_validity instead.")
  (data_validity m))

(cl:ensure-generic-function 'station_1_status-val :lambda-list '(m))
(cl:defmethod station_1_status-val ((m <YoubotModbusSensorMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:station_1_status-val is deprecated.  Use youbot_modbus_server-srv:station_1_status instead.")
  (station_1_status m))

(cl:ensure-generic-function 'station_2_status-val :lambda-list '(m))
(cl:defmethod station_2_status-val ((m <YoubotModbusSensorMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:station_2_status-val is deprecated.  Use youbot_modbus_server-srv:station_2_status instead.")
  (station_2_status m))

(cl:ensure-generic-function 'station_3_status-val :lambda-list '(m))
(cl:defmethod station_3_status-val ((m <YoubotModbusSensorMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:station_3_status-val is deprecated.  Use youbot_modbus_server-srv:station_3_status instead.")
  (station_3_status m))

(cl:ensure-generic-function 'station_4_status-val :lambda-list '(m))
(cl:defmethod station_4_status-val ((m <YoubotModbusSensorMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:station_4_status-val is deprecated.  Use youbot_modbus_server-srv:station_4_status instead.")
  (station_4_status m))

(cl:ensure-generic-function 'station_5_status-val :lambda-list '(m))
(cl:defmethod station_5_status-val ((m <YoubotModbusSensorMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:station_5_status-val is deprecated.  Use youbot_modbus_server-srv:station_5_status instead.")
  (station_5_status m))

(cl:ensure-generic-function 'station_6_status-val :lambda-list '(m))
(cl:defmethod station_6_status-val ((m <YoubotModbusSensorMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_modbus_server-srv:station_6_status-val is deprecated.  Use youbot_modbus_server-srv:station_6_status instead.")
  (station_6_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YoubotModbusSensorMsg-response>) ostream)
  "Serializes a message object of type '<YoubotModbusSensorMsg-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data_validity) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'station_1_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'station_2_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'station_3_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'station_4_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'station_5_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'station_6_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YoubotModbusSensorMsg-response>) istream)
  "Deserializes a message object of type '<YoubotModbusSensorMsg-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'data_validity) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station_1_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station_2_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station_3_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station_4_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station_5_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station_6_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YoubotModbusSensorMsg-response>)))
  "Returns string type for a service object of type '<YoubotModbusSensorMsg-response>"
  "youbot_modbus_server/YoubotModbusSensorMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoubotModbusSensorMsg-response)))
  "Returns string type for a service object of type 'YoubotModbusSensorMsg-response"
  "youbot_modbus_server/YoubotModbusSensorMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YoubotModbusSensorMsg-response>)))
  "Returns md5sum for a message object of type '<YoubotModbusSensorMsg-response>"
  "7ad9b1a6015e5561b08e8a3bbd95c7ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YoubotModbusSensorMsg-response)))
  "Returns md5sum for a message object of type 'YoubotModbusSensorMsg-response"
  "7ad9b1a6015e5561b08e8a3bbd95c7ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YoubotModbusSensorMsg-response>)))
  "Returns full string definition for message of type '<YoubotModbusSensorMsg-response>"
  (cl:format cl:nil "Header header~%bool data_validity~%int8 station_1_status~%int8 station_2_status~%int8 station_3_status~%int8 station_4_status~%int8 station_5_status~%int8 station_6_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YoubotModbusSensorMsg-response)))
  "Returns full string definition for message of type 'YoubotModbusSensorMsg-response"
  (cl:format cl:nil "Header header~%bool data_validity~%int8 station_1_status~%int8 station_2_status~%int8 station_3_status~%int8 station_4_status~%int8 station_5_status~%int8 station_6_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YoubotModbusSensorMsg-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YoubotModbusSensorMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'YoubotModbusSensorMsg-response
    (cl:cons ':header (header msg))
    (cl:cons ':data_validity (data_validity msg))
    (cl:cons ':station_1_status (station_1_status msg))
    (cl:cons ':station_2_status (station_2_status msg))
    (cl:cons ':station_3_status (station_3_status msg))
    (cl:cons ':station_4_status (station_4_status msg))
    (cl:cons ':station_5_status (station_5_status msg))
    (cl:cons ':station_6_status (station_6_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'YoubotModbusSensorMsg)))
  'YoubotModbusSensorMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'YoubotModbusSensorMsg)))
  'YoubotModbusSensorMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YoubotModbusSensorMsg)))
  "Returns string type for a service object of type '<YoubotModbusSensorMsg>"
  "youbot_modbus_server/YoubotModbusSensorMsg")