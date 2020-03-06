; Auto-generated. Do not edit!


(cl:in-package TP2-srv)


;//! \htmlinclude AnnotatedPose-request.msg.html

(cl:defclass <AnnotatedPose-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass AnnotatedPose-request (<AnnotatedPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotatedPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotatedPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name TP2-srv:<AnnotatedPose-request> is deprecated: use TP2-srv:AnnotatedPose-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <AnnotatedPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TP2-srv:name-val is deprecated.  Use TP2-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AnnotatedPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TP2-srv:pose-val is deprecated.  Use TP2-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotatedPose-request>) ostream)
  "Serializes a message object of type '<AnnotatedPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotatedPose-request>) istream)
  "Deserializes a message object of type '<AnnotatedPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotatedPose-request>)))
  "Returns string type for a service object of type '<AnnotatedPose-request>"
  "TP2/AnnotatedPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotatedPose-request)))
  "Returns string type for a service object of type 'AnnotatedPose-request"
  "TP2/AnnotatedPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotatedPose-request>)))
  "Returns md5sum for a message object of type '<AnnotatedPose-request>"
  "177d54286ddeee12eba514054bddffd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotatedPose-request)))
  "Returns md5sum for a message object of type 'AnnotatedPose-request"
  "177d54286ddeee12eba514054bddffd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotatedPose-request>)))
  "Returns full string definition for message of type '<AnnotatedPose-request>"
  (cl:format cl:nil "string name~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotatedPose-request)))
  "Returns full string definition for message of type 'AnnotatedPose-request"
  (cl:format cl:nil "string name~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotatedPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotatedPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotatedPose-request
    (cl:cons ':name (name msg))
    (cl:cons ':pose (pose msg))
))
;//! \htmlinclude AnnotatedPose-response.msg.html

(cl:defclass <AnnotatedPose-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AnnotatedPose-response (<AnnotatedPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnnotatedPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnnotatedPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name TP2-srv:<AnnotatedPose-response> is deprecated: use TP2-srv:AnnotatedPose-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnnotatedPose-response>) ostream)
  "Serializes a message object of type '<AnnotatedPose-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnnotatedPose-response>) istream)
  "Deserializes a message object of type '<AnnotatedPose-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnnotatedPose-response>)))
  "Returns string type for a service object of type '<AnnotatedPose-response>"
  "TP2/AnnotatedPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotatedPose-response)))
  "Returns string type for a service object of type 'AnnotatedPose-response"
  "TP2/AnnotatedPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnnotatedPose-response>)))
  "Returns md5sum for a message object of type '<AnnotatedPose-response>"
  "177d54286ddeee12eba514054bddffd5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnnotatedPose-response)))
  "Returns md5sum for a message object of type 'AnnotatedPose-response"
  "177d54286ddeee12eba514054bddffd5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnnotatedPose-response>)))
  "Returns full string definition for message of type '<AnnotatedPose-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnnotatedPose-response)))
  "Returns full string definition for message of type 'AnnotatedPose-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnnotatedPose-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnnotatedPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AnnotatedPose-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AnnotatedPose)))
  'AnnotatedPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AnnotatedPose)))
  'AnnotatedPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnnotatedPose)))
  "Returns string type for a service object of type '<AnnotatedPose>"
  "TP2/AnnotatedPose")