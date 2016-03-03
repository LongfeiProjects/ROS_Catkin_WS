; Auto-generated. Do not edit!


(cl:in-package tactilesensors-msg)


;//! \htmlinclude DynamicData.msg.html

(cl:defclass <DynamicData> (roslisp-msg-protocol:ros-message)
  ((SensorID
    :reader SensorID
    :initarg :SensorID
    :type cl:fixnum
    :initform 0)
   (Data
    :reader Data
    :initarg :Data
    :type cl:float
    :initform 0.0))
)

(cl:defclass DynamicData (<DynamicData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DynamicData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DynamicData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactilesensors-msg:<DynamicData> is deprecated: use tactilesensors-msg:DynamicData instead.")))

(cl:ensure-generic-function 'SensorID-val :lambda-list '(m))
(cl:defmethod SensorID-val ((m <DynamicData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactilesensors-msg:SensorID-val is deprecated.  Use tactilesensors-msg:SensorID instead.")
  (SensorID m))

(cl:ensure-generic-function 'Data-val :lambda-list '(m))
(cl:defmethod Data-val ((m <DynamicData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactilesensors-msg:Data-val is deprecated.  Use tactilesensors-msg:Data instead.")
  (Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DynamicData>) ostream)
  "Serializes a message object of type '<DynamicData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensorID)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DynamicData>) istream)
  "Deserializes a message object of type '<DynamicData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensorID)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Data) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DynamicData>)))
  "Returns string type for a message object of type '<DynamicData>"
  "tactilesensors/DynamicData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DynamicData)))
  "Returns string type for a message object of type 'DynamicData"
  "tactilesensors/DynamicData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DynamicData>)))
  "Returns md5sum for a message object of type '<DynamicData>"
  "414f159a6bdc7605806b8e9029f04ada")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DynamicData)))
  "Returns md5sum for a message object of type 'DynamicData"
  "414f159a6bdc7605806b8e9029f04ada")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DynamicData>)))
  "Returns full string definition for message of type '<DynamicData>"
  (cl:format cl:nil "uint8 SensorID~%float64 Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DynamicData)))
  "Returns full string definition for message of type 'DynamicData"
  (cl:format cl:nil "uint8 SensorID~%float64 Data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DynamicData>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DynamicData>))
  "Converts a ROS message object to a list"
  (cl:list 'DynamicData
    (cl:cons ':SensorID (SensorID msg))
    (cl:cons ':Data (Data msg))
))
