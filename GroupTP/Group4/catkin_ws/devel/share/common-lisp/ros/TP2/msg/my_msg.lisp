; Auto-generated. Do not edit!


(cl:in-package TP2-msg)


;//! \htmlinclude my_msg.msg.html

(cl:defclass <my_msg> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (test
    :reader test
    :initarg :test
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass my_msg (<my_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <my_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'my_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name TP2-msg:<my_msg> is deprecated: use TP2-msg:my_msg instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <my_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TP2-msg:name-val is deprecated.  Use TP2-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'test-val :lambda-list '(m))
(cl:defmethod test-val ((m <my_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader TP2-msg:test-val is deprecated.  Use TP2-msg:test instead.")
  (test m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <my_msg>) ostream)
  "Serializes a message object of type '<my_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'test) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <my_msg>) istream)
  "Deserializes a message object of type '<my_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'test) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<my_msg>)))
  "Returns string type for a message object of type '<my_msg>"
  "TP2/my_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'my_msg)))
  "Returns string type for a message object of type 'my_msg"
  "TP2/my_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<my_msg>)))
  "Returns md5sum for a message object of type '<my_msg>"
  "c57db0100443976166cb61c20bd5aae2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'my_msg)))
  "Returns md5sum for a message object of type 'my_msg"
  "c57db0100443976166cb61c20bd5aae2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<my_msg>)))
  "Returns full string definition for message of type '<my_msg>"
  (cl:format cl:nil "string name~%bool test~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'my_msg)))
  "Returns full string definition for message of type 'my_msg"
  (cl:format cl:nil "string name~%bool test~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <my_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <my_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'my_msg
    (cl:cons ':name (name msg))
    (cl:cons ':test (test msg))
))
