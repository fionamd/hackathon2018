; Auto-generated. Do not edit!


(cl:in-package forklift-msg)


;//! \htmlinclude cameraImage.msg.html

(cl:defclass <cameraImage> (roslisp-msg-protocol:ros-message)
  ((connected
    :reader connected
    :initarg :connected
    :type cl:fixnum
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (offsetRight
    :reader offsetRight
    :initarg :offsetRight
    :type cl:float
    :initform 0.0)
   (offsetLeft
    :reader offsetLeft
    :initarg :offsetLeft
    :type cl:float
    :initform 0.0))
)

(cl:defclass cameraImage (<cameraImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cameraImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cameraImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name forklift-msg:<cameraImage> is deprecated: use forklift-msg:cameraImage instead.")))

(cl:ensure-generic-function 'connected-val :lambda-list '(m))
(cl:defmethod connected-val ((m <cameraImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader forklift-msg:connected-val is deprecated.  Use forklift-msg:connected instead.")
  (connected m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <cameraImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader forklift-msg:distance-val is deprecated.  Use forklift-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'offsetRight-val :lambda-list '(m))
(cl:defmethod offsetRight-val ((m <cameraImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader forklift-msg:offsetRight-val is deprecated.  Use forklift-msg:offsetRight instead.")
  (offsetRight m))

(cl:ensure-generic-function 'offsetLeft-val :lambda-list '(m))
(cl:defmethod offsetLeft-val ((m <cameraImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader forklift-msg:offsetLeft-val is deprecated.  Use forklift-msg:offsetLeft instead.")
  (offsetLeft m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cameraImage>) ostream)
  "Serializes a message object of type '<cameraImage>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connected)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offsetRight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'offsetLeft))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cameraImage>) istream)
  "Deserializes a message object of type '<cameraImage>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'connected)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offsetRight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offsetLeft) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cameraImage>)))
  "Returns string type for a message object of type '<cameraImage>"
  "forklift/cameraImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cameraImage)))
  "Returns string type for a message object of type 'cameraImage"
  "forklift/cameraImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cameraImage>)))
  "Returns md5sum for a message object of type '<cameraImage>"
  "a27296fffd6a071bb8b6b8263bdeaebb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cameraImage)))
  "Returns md5sum for a message object of type 'cameraImage"
  "a27296fffd6a071bb8b6b8263bdeaebb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cameraImage>)))
  "Returns full string definition for message of type '<cameraImage>"
  (cl:format cl:nil "uint8 connected~%float32 distance~%float32 offsetRight~%float32 offsetLeft~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cameraImage)))
  "Returns full string definition for message of type 'cameraImage"
  (cl:format cl:nil "uint8 connected~%float32 distance~%float32 offsetRight~%float32 offsetLeft~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cameraImage>))
  (cl:+ 0
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cameraImage>))
  "Converts a ROS message object to a list"
  (cl:list 'cameraImage
    (cl:cons ':connected (connected msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':offsetRight (offsetRight msg))
    (cl:cons ':offsetLeft (offsetLeft msg))
))
