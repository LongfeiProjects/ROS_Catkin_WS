; Auto-generated. Do not edit!


(cl:in-package youbot_msgs-msg)


;//! \htmlinclude UpdateDependency.msg.html

(cl:defclass <UpdateDependency> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UpdateDependency (<UpdateDependency>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdateDependency>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdateDependency)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name youbot_msgs-msg:<UpdateDependency> is deprecated: use youbot_msgs-msg:UpdateDependency instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <UpdateDependency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_msgs-msg:name-val is deprecated.  Use youbot_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <UpdateDependency>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader youbot_msgs-msg:status-val is deprecated.  Use youbot_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdateDependency>) ostream)
  "Serializes a message object of type '<UpdateDependency>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdateDependency>) istream)
  "Deserializes a message object of type '<UpdateDependency>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdateDependency>)))
  "Returns string type for a message object of type '<UpdateDependency>"
  "youbot_msgs/UpdateDependency")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdateDependency)))
  "Returns string type for a message object of type 'UpdateDependency"
  "youbot_msgs/UpdateDependency")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdateDependency>)))
  "Returns md5sum for a message object of type '<UpdateDependency>"
  "1b984ddd6d6825cc021e2e5586d5252b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdateDependency)))
  "Returns md5sum for a message object of type 'UpdateDependency"
  "1b984ddd6d6825cc021e2e5586d5252b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdateDependency>)))
  "Returns full string definition for message of type '<UpdateDependency>"
  (cl:format cl:nil "string name~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdateDependency)))
  "Returns full string definition for message of type 'UpdateDependency"
  (cl:format cl:nil "string name~%bool status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdateDependency>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdateDependency>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdateDependency
    (cl:cons ':name (name msg))
    (cl:cons ':status (status msg))
))
