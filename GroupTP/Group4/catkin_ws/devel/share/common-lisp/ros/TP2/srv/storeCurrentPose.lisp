; Auto-generated. Do not edit!


(cl:in-package TP2-srv)


;//! \htmlinclude storeCurrentPose-request.msg.html

(cl:defclass <storeCurrentPose-request> (roslisp-msg-protocol:ros-message)
  ((azrt
    :reader azrt
    :initarg :azrt
    :type cl:string
    :initform ""))
)

(cl:defclass storeCurrentPose-request (<storeCurrentPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <storeCurrentPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'storeCurrentPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name TP2-srv:<storeCurrentPose-request> is deprecated: use TP2-srv:storeCurrentPose-request instead.")))

(cl:ensure-generic-function 'azrt-val :lambda-list '(m))
(cl:defmethod azrt-val ((m <storeCurrentPose-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TP2-srv:azrt-val is deprecated.  Use TP2-srv:azrt instead.")
  (azrt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <storeCurrentPose-request>) ostream)
  "Serializes a message object of type '<storeCurrentPose-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'azrt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'azrt))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <storeCurrentPose-request>) istream)
  "Deserializes a message object of type '<storeCurrentPose-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'azrt) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'azrt) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<storeCurrentPose-request>)))
  "Returns string type for a service object of type '<storeCurrentPose-request>"
  "TP2/storeCurrentPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'storeCurrentPose-request)))
  "Returns string type for a service object of type 'storeCurrentPose-request"
  "TP2/storeCurrentPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<storeCurrentPose-request>)))
  "Returns md5sum for a message object of type '<storeCurrentPose-request>"
  "76cdbda74b9c2ca801810b792eae59ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'storeCurrentPose-request)))
  "Returns md5sum for a message object of type 'storeCurrentPose-request"
  "76cdbda74b9c2ca801810b792eae59ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<storeCurrentPose-request>)))
  "Returns full string definition for message of type '<storeCurrentPose-request>"
  (cl:format cl:nil "string azrt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'storeCurrentPose-request)))
  "Returns full string definition for message of type 'storeCurrentPose-request"
  (cl:format cl:nil "string azrt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <storeCurrentPose-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'azrt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <storeCurrentPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'storeCurrentPose-request
    (cl:cons ':azrt (azrt msg))
))
;//! \htmlinclude storeCurrentPose-response.msg.html

(cl:defclass <storeCurrentPose-response> (roslisp-msg-protocol:ros-message)
  ((succeed
    :reader succeed
    :initarg :succeed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass storeCurrentPose-response (<storeCurrentPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <storeCurrentPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'storeCurrentPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name TP2-srv:<storeCurrentPose-response> is deprecated: use TP2-srv:storeCurrentPose-response instead.")))

(cl:ensure-generic-function 'succeed-val :lambda-list '(m))
(cl:defmethod succeed-val ((m <storeCurrentPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TP2-srv:succeed-val is deprecated.  Use TP2-srv:succeed instead.")
  (succeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <storeCurrentPose-response>) ostream)
  "Serializes a message object of type '<storeCurrentPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'succeed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <storeCurrentPose-response>) istream)
  "Deserializes a message object of type '<storeCurrentPose-response>"
    (cl:setf (cl:slot-value msg 'succeed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<storeCurrentPose-response>)))
  "Returns string type for a service object of type '<storeCurrentPose-response>"
  "TP2/storeCurrentPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'storeCurrentPose-response)))
  "Returns string type for a service object of type 'storeCurrentPose-response"
  "TP2/storeCurrentPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<storeCurrentPose-response>)))
  "Returns md5sum for a message object of type '<storeCurrentPose-response>"
  "76cdbda74b9c2ca801810b792eae59ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'storeCurrentPose-response)))
  "Returns md5sum for a message object of type 'storeCurrentPose-response"
  "76cdbda74b9c2ca801810b792eae59ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<storeCurrentPose-response>)))
  "Returns full string definition for message of type '<storeCurrentPose-response>"
  (cl:format cl:nil "bool succeed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'storeCurrentPose-response)))
  "Returns full string definition for message of type 'storeCurrentPose-response"
  (cl:format cl:nil "bool succeed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <storeCurrentPose-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <storeCurrentPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'storeCurrentPose-response
    (cl:cons ':succeed (succeed msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'storeCurrentPose)))
  'storeCurrentPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'storeCurrentPose)))
  'storeCurrentPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'storeCurrentPose)))
  "Returns string type for a service object of type '<storeCurrentPose>"
  "TP2/storeCurrentPose")