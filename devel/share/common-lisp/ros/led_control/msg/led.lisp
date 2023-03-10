; Auto-generated. Do not edit!


(cl:in-package led_control-msg)


;//! \htmlinclude led.msg.html

(cl:defclass <led> (roslisp-msg-protocol:ros-message)
  ((ledState
    :reader ledState
    :initarg :ledState
    :type cl:string
    :initform ""))
)

(cl:defclass led (<led>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <led>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'led)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name led_control-msg:<led> is deprecated: use led_control-msg:led instead.")))

(cl:ensure-generic-function 'ledState-val :lambda-list '(m))
(cl:defmethod ledState-val ((m <led>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader led_control-msg:ledState-val is deprecated.  Use led_control-msg:ledState instead.")
  (ledState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <led>) ostream)
  "Serializes a message object of type '<led>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ledState))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ledState))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <led>) istream)
  "Deserializes a message object of type '<led>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ledState) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ledState) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<led>)))
  "Returns string type for a message object of type '<led>"
  "led_control/led")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'led)))
  "Returns string type for a message object of type 'led"
  "led_control/led")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<led>)))
  "Returns md5sum for a message object of type '<led>"
  "2e72d8d4579cf7ba2c7a9cea0cf0c7ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'led)))
  "Returns md5sum for a message object of type 'led"
  "2e72d8d4579cf7ba2c7a9cea0cf0c7ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<led>)))
  "Returns full string definition for message of type '<led>"
  (cl:format cl:nil "string ledState #string to hold the desired LED state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'led)))
  "Returns full string definition for message of type 'led"
  (cl:format cl:nil "string ledState #string to hold the desired LED state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <led>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ledState))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <led>))
  "Converts a ROS message object to a list"
  (cl:list 'led
    (cl:cons ':ledState (ledState msg))
))
