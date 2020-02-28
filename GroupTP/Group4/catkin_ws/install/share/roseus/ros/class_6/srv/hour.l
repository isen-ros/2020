;; Auto-generated. Do not edit!


(when (boundp 'class_6::hour)
  (if (not (find-package "CLASS_6"))
    (make-package "CLASS_6"))
  (shadow 'hour (find-package "CLASS_6")))
(unless (find-package "CLASS_6::HOUR")
  (make-package "CLASS_6::HOUR"))
(unless (find-package "CLASS_6::HOURREQUEST")
  (make-package "CLASS_6::HOURREQUEST"))
(unless (find-package "CLASS_6::HOURRESPONSE")
  (make-package "CLASS_6::HOURRESPONSE"))

(in-package "ROS")





(defclass class_6::hourRequest
  :super ros::object
  :slots (_test ))

(defmethod class_6::hourRequest
  (:init
   (&key
    ((:test __test) 0)
    )
   (send-super :init)
   (setq _test (round __test))
   self)
  (:test
   (&optional __test)
   (if __test (setq _test __test)) _test)
  (:serialization-length
   ()
   (+
    ;; int64 _test
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _test
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _test (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _test) (= (length (_test . bv)) 2)) ;; bignum
              (write-long (ash (elt (_test . bv) 0) 0) s)
              (write-long (ash (elt (_test . bv) 1) -1) s))
             ((and (class _test) (= (length (_test . bv)) 1)) ;; big1
              (write-long (elt (_test . bv) 0) s)
              (write-long (if (>= _test 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _test s)(write-long (if (>= _test 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _test
#+(or :alpha :irix6 :x86_64)
      (setf _test (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _test (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass class_6::hourResponse
  :super ros::object
  :slots (_hour ))

(defmethod class_6::hourResponse
  (:init
   (&key
    ((:hour __hour) 0)
    )
   (send-super :init)
   (setq _hour (round __hour))
   self)
  (:hour
   (&optional __hour)
   (if __hour (setq _hour __hour)) _hour)
  (:serialization-length
   ()
   (+
    ;; int64 _hour
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _hour
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _hour (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _hour) (= (length (_hour . bv)) 2)) ;; bignum
              (write-long (ash (elt (_hour . bv) 0) 0) s)
              (write-long (ash (elt (_hour . bv) 1) -1) s))
             ((and (class _hour) (= (length (_hour . bv)) 1)) ;; big1
              (write-long (elt (_hour . bv) 0) s)
              (write-long (if (>= _hour 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _hour s)(write-long (if (>= _hour 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _hour
#+(or :alpha :irix6 :x86_64)
      (setf _hour (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _hour (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass class_6::hour
  :super ros::object
  :slots ())

(setf (get class_6::hour :md5sum-) "909db46b8445c3c9ddb06c5737706275")
(setf (get class_6::hour :datatype-) "class_6/hour")
(setf (get class_6::hour :request) class_6::hourRequest)
(setf (get class_6::hour :response) class_6::hourResponse)

(defmethod class_6::hourRequest
  (:response () (instance class_6::hourResponse :init)))

(setf (get class_6::hourRequest :md5sum-) "909db46b8445c3c9ddb06c5737706275")
(setf (get class_6::hourRequest :datatype-) "class_6/hourRequest")
(setf (get class_6::hourRequest :definition-)
      "int64 test
---
int64 hour

")

(setf (get class_6::hourResponse :md5sum-) "909db46b8445c3c9ddb06c5737706275")
(setf (get class_6::hourResponse :datatype-) "class_6/hourResponse")
(setf (get class_6::hourResponse :definition-)
      "int64 test
---
int64 hour

")



(provide :class_6/hour "909db46b8445c3c9ddb06c5737706275")


