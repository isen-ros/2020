; Auto-generated. Do not edit!


(cl:in-package tp_2-msg)


;//! \htmlinclude Message1.msg.html

(cl:defclass <Message1> (roslisp-msg-protocol:ros-message)
  ((Base
    :reader Base
    :initarg :Base
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass Message1 (<Message1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Message1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Message1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tp_2-msg:<Message1> is deprecated: use tp_2-msg:Message1 instead.")))

(cl:ensure-generic-function 'Base-val :lambda-list '(m))
(cl:defmethod Base-val ((m <Message1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tp_2-msg:Base-val is deprecated.  Use tp_2-msg:Base instead.")
  (Base m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Message1>) ostream)
  "Serializes a message object of type '<Message1>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Base) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Message1>) istream)
  "Deserializes a message object of type '<Message1>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Base) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Message1>)))
  "Returns string type for a message object of type '<Message1>"
  "tp_2/Message1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Message1)))
  "Returns string type for a message object of type 'Message1"
  "tp_2/Message1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Message1>)))
  "Returns md5sum for a message object of type '<Message1>"
  "d811f96aa4121df7305ae402a0611d51")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Message1)))
  "Returns md5sum for a message object of type 'Message1"
  "d811f96aa4121df7305ae402a0611d51")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Message1>)))
  "Returns full string definition for message of type '<Message1>"
  (cl:format cl:nil "geometry_msgs/Twist Base~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Message1)))
  "Returns full string definition for message of type 'Message1"
  (cl:format cl:nil "geometry_msgs/Twist Base~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Message1>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Base))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Message1>))
  "Converts a ROS message object to a list"
  (cl:list 'Message1
    (cl:cons ':Base (Base msg))
))
