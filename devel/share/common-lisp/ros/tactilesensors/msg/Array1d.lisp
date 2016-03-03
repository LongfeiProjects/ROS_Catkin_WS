; Auto-generated. Do not edit!


(cl:in-package tactilesensors-msg)


;//! \htmlinclude Array1d.msg.html

(cl:defclass <Array1d> (roslisp-msg-protocol:ros-message)
  ((thedata
    :reader thedata
    :initarg :thedata
    :type (cl:vector cl:integer)
   :initform (cl:make-array 12 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Array1d (<Array1d>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Array1d>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Array1d)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tactilesensors-msg:<Array1d> is deprecated: use tactilesensors-msg:Array1d instead.")))

(cl:ensure-generic-function 'thedata-val :lambda-list '(m))
(cl:defmethod thedata-val ((m <Array1d>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tactilesensors-msg:thedata-val is deprecated.  Use tactilesensors-msg:thedata instead.")
  (thedata m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Array1d>) ostream)
  "Serializes a message object of type '<Array1d>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'thedata))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Array1d>) istream)
  "Deserializes a message object of type '<Array1d>"
  (cl:setf (cl:slot-value msg 'thedata) (cl:make-array 12))
  (cl:let ((vals (cl:slot-value msg 'thedata)))
    (cl:dotimes (i 12)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Array1d>)))
  "Returns string type for a message object of type '<Array1d>"
  "tactilesensors/Array1d")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Array1d)))
  "Returns string type for a message object of type 'Array1d"
  "tactilesensors/Array1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Array1d>)))
  "Returns md5sum for a message object of type '<Array1d>"
  "a6f1a05eedec1e513cf8e33e622fa716")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Array1d)))
  "Returns md5sum for a message object of type 'Array1d"
  "a6f1a05eedec1e513cf8e33e622fa716")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Array1d>)))
  "Returns full string definition for message of type '<Array1d>"
  (cl:format cl:nil "int32[12] thedata~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Array1d)))
  "Returns full string definition for message of type 'Array1d"
  (cl:format cl:nil "int32[12] thedata~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Array1d>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'thedata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Array1d>))
  "Converts a ROS message object to a list"
  (cl:list 'Array1d
    (cl:cons ':thedata (thedata msg))
))
