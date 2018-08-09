; Auto-generated. Do not edit!


(cl:in-package forklift-msg)


;//! \htmlinclude vehicleControl.msg.html

(cl:defclass <vehicleControl> (roslisp-msg-protocol:ros-message)
  ((code
    :reader code
    :initarg :code
    :type cl:fixnum
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:fixnum
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:fixnum
    :initform 0))
)

(cl:defclass vehicleControl (<vehicleControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vehicleControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vehicleControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name forklift-msg:<vehicleControl> is deprecated: use forklift-msg:vehicleControl instead.")))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <vehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader forklift-msg:code-val is deprecated.  Use forklift-msg:code instead.")
  (code m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <vehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader forklift-msg:duration-val is deprecated.  Use forklift-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <vehicleControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader forklift-msg:angle-val is deprecated.  Use forklift-msg:angle instead.")
  (angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vehicleControl>) ostream)
  "Serializes a message object of type '<vehicleControl>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'angle)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vehicleControl>) istream)
  "Deserializes a message object of type '<vehicleControl>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'angle)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vehicleControl>)))
  "Returns string type for a message object of type '<vehicleControl>"
  "forklift/vehicleControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vehicleControl)))
  "Returns string type for a message object of type 'vehicleControl"
  "forklift/vehicleControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vehicleControl>)))
  "Returns md5sum for a message object of type '<vehicleControl>"
  "98e4df19f6b2439f6bb856d777d6e5a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vehicleControl)))
  "Returns md5sum for a message object of type 'vehicleControl"
  "98e4df19f6b2439f6bb856d777d6e5a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vehicleControl>)))
  "Returns full string definition for message of type '<vehicleControl>"
  (cl:format cl:nil "uint8 code~%~%uint16 duration~%uint16 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vehicleControl)))
  "Returns full string definition for message of type 'vehicleControl"
  (cl:format cl:nil "uint8 code~%~%uint16 duration~%uint16 angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vehicleControl>))
  (cl:+ 0
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vehicleControl>))
  "Converts a ROS message object to a list"
  (cl:list 'vehicleControl
    (cl:cons ':code (code msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':angle (angle msg))
))
