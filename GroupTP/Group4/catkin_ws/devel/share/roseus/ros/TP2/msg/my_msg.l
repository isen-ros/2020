;; Auto-generated. Do not edit!


(when (boundp 'TP2::my_msg)
  (if (not (find-package "TP2"))
    (make-package "TP2"))
  (shadow 'my_msg (find-package "TP2")))
(unless (find-package "TP2::MY_MSG")
  (make-package "TP2::MY_MSG"))

(in-package "ROS")
;;//! \htmlinclude my_msg.msg.html


(defclass TP2::my_msg
  :super ros::object
  :slots (_name _test ))

(defmethod TP2::my_msg
  (:init
   (&key
    ((:name __name) "")
    ((:test __test) nil)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _test __test)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:test
   (&optional __test)
   (if __test (setq _test __test)) _test)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _test
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _test
       (if _test (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _test
     (setq _test (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get TP2::my_msg :md5sum-) "c57db0100443976166cb61c20bd5aae2")
(setf (get TP2::my_msg :datatype-) "TP2/my_msg")
(setf (get TP2::my_msg :definition-)
      "string name
bool test

")



(provide :TP2/my_msg "c57db0100443976166cb61c20bd5aae2")


