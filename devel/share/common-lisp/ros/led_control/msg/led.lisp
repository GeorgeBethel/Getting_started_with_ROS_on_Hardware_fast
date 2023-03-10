; Auto-generated. Do not edit!


(cl:in-package led_control-msg)


;//! \htmlinclude led.msg.html

(cl:defclass <led> (roslisp-msg-protocol:ros-message)
  ((ledState
    :reader ledState
    :initarg :ledState
    :type cl:boolean
    :initform cl:nil))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ledState) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <led>) istream)
  "Deserializes a message object of type '<led>"
    (cl:setf (cl:slot-value msg 'ledState) (cl:not (cl:zerop (cl:read-byte istream))))
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
  "781db327ac3ac8924f798b25d3f9bd79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'led)))
  "Returns md5sum for a message object of type 'led"
  "781db327ac3ac8924f798b25d3f9bd79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<led>)))
  "Returns full string definition for message of type '<led>"
  (cl:format cl:nil "bool ledState #string to hold the desired LED state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'led)))
  "Returns full string definition for message of type 'led"
  (cl:format cl:nil "bool ledState #string to hold the desired LED state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <led>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <led>))
  "Converts a ROS message object to a list"
  (cl:list 'led
    (cl:cons ':ledState (ledState msg))
))
