; Auto-generated. Do not edit!


(cl:in-package forklift-msg)


;//! \htmlinclude plcInfo.msg.html

(cl:defclass <plcInfo> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:integer
    :initform 0)
   (obstructionFound1
    :reader obstructionFound1
    :initarg :obstructionFound1
    :type cl:fixnum
    :initform 0)
   (obstructionFound2
    :reader obstructionFound2
    :initarg :obstructionFound2
    :type cl:fixnum
    :initform 0))
)

(cl:defclass plcInfo (<plcInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plcInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plcInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name forklift-msg:<plcInfo> is deprecated: use forklift-msg:plcInfo instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <plcInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader forklift-msg:distance-val is deprecated.  Use forklift-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'obstructionFound1-val :lambda-list '(m))
(cl:defmethod obstructionFound1-val ((m <plcInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader forklift-msg:obstructionFound1-val is deprecated.  Use forklift-msg:obstructionFound1 instead.")
  (obstructionFound1 m))

(cl:ensure-generic-function 'obstructionFound2-val :lambda-list '(m))
(cl:defmethod obstructionFound2-val ((m <plcInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader forklift-msg:obstructionFound2-val is deprecated.  Use forklift-msg:obstructionFound2 instead.")
  (obstructionFound2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plcInfo>) ostream)
  "Serializes a message object of type '<plcInfo>"
  (cl:let* ((signed (cl:slot-value msg 'distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstructionFound1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstructionFound2)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plcInfo>) istream)
  "Deserializes a message object of type '<plcInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstructionFound1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obstructionFound2)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plcInfo>)))
  "Returns string type for a message object of type '<plcInfo>"
  "forklift/plcInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plcInfo)))
  "Returns string type for a message object of type 'plcInfo"
  "forklift/plcInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plcInfo>)))
  "Returns md5sum for a message object of type '<plcInfo>"
  "ad4909de7abd886abeaa5d2c7332866a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plcInfo)))
  "Returns md5sum for a message object of type 'plcInfo"
  "ad4909de7abd886abeaa5d2c7332866a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plcInfo>)))
  "Returns full string definition for message of type '<plcInfo>"
  (cl:format cl:nil "int32 distance~%uint8 obstructionFound1~%uint8 obstructionFound2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plcInfo)))
  "Returns full string definition for message of type 'plcInfo"
  (cl:format cl:nil "int32 distance~%uint8 obstructionFound1~%uint8 obstructionFound2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plcInfo>))
  (cl:+ 0
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plcInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'plcInfo
    (cl:cons ':distance (distance msg))
    (cl:cons ':obstructionFound1 (obstructionFound1 msg))
    (cl:cons ':obstructionFound2 (obstructionFound2 msg))
))
