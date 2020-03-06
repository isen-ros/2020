; Auto-generated. Do not edit!


(cl:in-package tp2-msg)


;//! \htmlinclude Message1.msg.html

(cl:defclass <Message1> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass Message1 (<Message1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Message1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Message1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tp2-msg:<Message1> is deprecated: use tp2-msg:Message1 instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Message1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tp2-msg:pose-val is deprecated.  Use tp2-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Message1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tp2-msg:name-val is deprecated.  Use tp2-msg:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Message1>) ostream)
  "Serializes a message object of type '<Message1>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Message1>) istream)
  "Deserializes a message object of type '<Message1>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Message1>)))
  "Returns string type for a message object of type '<Message1>"
  "tp2/Message1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Message1)))
  "Returns string type for a message object of type 'Message1"
  "tp2/Message1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Message1>)))
  "Returns md5sum for a message object of type '<Message1>"
  "f716db42957c7b57682e1bb8a22eae4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Message1)))
  "Returns md5sum for a message object of type 'Message1"
  "f716db42957c7b57682e1bb8a22eae4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Message1>)))
  "Returns full string definition for message of type '<Message1>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%string name~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Message1)))
  "Returns full string definition for message of type 'Message1"
  (cl:format cl:nil "geometry_msgs/Pose pose~%string name~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Message1>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Message1>))
  "Converts a ROS message object to a list"
  (cl:list 'Message1
    (cl:cons ':pose (pose msg))
    (cl:cons ':name (name msg))
))
