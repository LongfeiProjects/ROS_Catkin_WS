; Auto-generated. Do not edit!


(cl:in-package tactilesensors-msg)


;//! \htmlinclude StaticData.msg.html

(cl:defclass <StaticData> (roslisp-msg-protocol:ros-message)
  ((SensorID
    :reader SensorID
    :initarg :SensorID
    :type cl:fixnum
    :initform 0)
   (Data
    :reader Data
    :initarg :Data
    :type tactilesensors-msg:Array1d
    :initform (cl:make-instance 'tactilesensors-msg:Array1d)))
)

(cl:defclass StaticData (<StaticData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StaticData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StaticData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactilesensors-msg:<StaticData> is deprecated: use tactilesensors-msg:StaticData instead.")))

(cl:ensure-generic-function 'SensorID-val :lambda-list '(m))
(cl:defmethod SensorID-val ((m <StaticData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactilesensors-msg:SensorID-val is deprecated.  Use tactilesensors-msg:SensorID instead.")
  (SensorID m))

(cl:ensure-generic-function 'Data-val :lambda-list '(m))
(cl:defmethod Data-val ((m <StaticData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactilesensors-msg:Data-val is deprecated.  Use tactilesensors-msg:Data instead.")
  (Data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StaticData>) ostream)
  "Serializes a message object of type '<StaticData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensorID)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StaticData>) istream)
  "Deserializes a message object of type '<StaticData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SensorID)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StaticData>)))
  "Returns string type for a message object of type '<StaticData>"
  "tactilesensors/StaticData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StaticData)))
  "Returns string type for a message object of type 'StaticData"
  "tactilesensors/StaticData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StaticData>)))
  "Returns md5sum for a message object of type '<StaticData>"
  "2e63c89b32d4a018cbcdfb283a9e102a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StaticData)))
  "Returns md5sum for a message object of type 'StaticData"
  "2e63c89b32d4a018cbcdfb283a9e102a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StaticData>)))
  "Returns full string definition for message of type '<StaticData>"
  (cl:format cl:nil "uint8 SensorID~%Array1d Data~%~%================================================================================~%MSG: tactilesensors/Array1d~%int32[12] thedata~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StaticData)))
  "Returns full string definition for message of type 'StaticData"
  (cl:format cl:nil "uint8 SensorID~%Array1d Data~%~%================================================================================~%MSG: tactilesensors/Array1d~%int32[12] thedata~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StaticData>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StaticData>))
  "Converts a ROS message object to a list"
  (cl:list 'StaticData
    (cl:cons ':SensorID (SensorID msg))
    (cl:cons ':Data (Data msg))
))
