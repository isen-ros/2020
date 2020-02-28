; Auto-generated. Do not edit!


(cl:in-package class_6-srv)


;//! \htmlinclude hour-request.msg.html

(cl:defclass <hour-request> (roslisp-msg-protocol:ros-message)
  ((test
    :reader test
    :initarg :test
    :type cl:integer
    :initform 0))
)

(cl:defclass hour-request (<hour-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hour-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hour-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name class_6-srv:<hour-request> is deprecated: use class_6-srv:hour-request instead.")))

(cl:ensure-generic-function 'test-val :lambda-list '(m))
(cl:defmethod test-val ((m <hour-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader class_6-srv:test-val is deprecated.  Use class_6-srv:test instead.")
  (test m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hour-request>) ostream)
  "Serializes a message object of type '<hour-request>"
  (cl:let* ((signed (cl:slot-value msg 'test)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hour-request>) istream)
  "Deserializes a message object of type '<hour-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'test) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hour-request>)))
  "Returns string type for a service object of type '<hour-request>"
  "class_6/hourRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hour-request)))
  "Returns string type for a service object of type 'hour-request"
  "class_6/hourRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hour-request>)))
  "Returns md5sum for a message object of type '<hour-request>"
  "909db46b8445c3c9ddb06c5737706275")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hour-request)))
  "Returns md5sum for a message object of type 'hour-request"
  "909db46b8445c3c9ddb06c5737706275")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hour-request>)))
  "Returns full string definition for message of type '<hour-request>"
  (cl:format cl:nil "int64 test~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hour-request)))
  "Returns full string definition for message of type 'hour-request"
  (cl:format cl:nil "int64 test~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hour-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hour-request>))
  "Converts a ROS message object to a list"
  (cl:list 'hour-request
    (cl:cons ':test (test msg))
))
;//! \htmlinclude hour-response.msg.html

(cl:defclass <hour-response> (roslisp-msg-protocol:ros-message)
  ((hour
    :reader hour
    :initarg :hour
    :type cl:integer
    :initform 0))
)

(cl:defclass hour-response (<hour-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hour-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hour-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name class_6-srv:<hour-response> is deprecated: use class_6-srv:hour-response instead.")))

(cl:ensure-generic-function 'hour-val :lambda-list '(m))
(cl:defmethod hour-val ((m <hour-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader class_6-srv:hour-val is deprecated.  Use class_6-srv:hour instead.")
  (hour m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hour-response>) ostream)
  "Serializes a message object of type '<hour-response>"
  (cl:let* ((signed (cl:slot-value msg 'hour)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hour-response>) istream)
  "Deserializes a message object of type '<hour-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'hour) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hour-response>)))
  "Returns string type for a service object of type '<hour-response>"
  "class_6/hourResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hour-response)))
  "Returns string type for a service object of type 'hour-response"
  "class_6/hourResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hour-response>)))
  "Returns md5sum for a message object of type '<hour-response>"
  "909db46b8445c3c9ddb06c5737706275")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hour-response)))
  "Returns md5sum for a message object of type 'hour-response"
  "909db46b8445c3c9ddb06c5737706275")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hour-response>)))
  "Returns full string definition for message of type '<hour-response>"
  (cl:format cl:nil "int64 hour~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hour-response)))
  "Returns full string definition for message of type 'hour-response"
  (cl:format cl:nil "int64 hour~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hour-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hour-response>))
  "Converts a ROS message object to a list"
  (cl:list 'hour-response
    (cl:cons ':hour (hour msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'hour)))
  'hour-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'hour)))
  'hour-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hour)))
  "Returns string type for a service object of type '<hour>"
  "class_6/hour")