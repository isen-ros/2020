;; Auto-generated. Do not edit!


(when (boundp 'TP2::storeCurrentPose)
  (if (not (find-package "TP2"))
    (make-package "TP2"))
  (shadow 'storeCurrentPose (find-package "TP2")))
(unless (find-package "TP2::STORECURRENTPOSE")
  (make-package "TP2::STORECURRENTPOSE"))
(unless (find-package "TP2::STORECURRENTPOSEREQUEST")
  (make-package "TP2::STORECURRENTPOSEREQUEST"))
(unless (find-package "TP2::STORECURRENTPOSERESPONSE")
  (make-package "TP2::STORECURRENTPOSERESPONSE"))

(in-package "ROS")





(defclass TP2::storeCurrentPoseRequest
  :super ros::object
  :slots (_azrt ))

(defmethod TP2::storeCurrentPoseRequest
  (:init
   (&key
    ((:azrt __azrt) "")
    )
   (send-super :init)
   (setq _azrt (string __azrt))
   self)
  (:azrt
   (&optional __azrt)
   (if __azrt (setq _azrt __azrt)) _azrt)
  (:serialization-length
   ()
   (+
    ;; string _azrt
    4 (length _azrt)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _azrt
       (write-long (length _azrt) s) (princ _azrt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _azrt
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _azrt (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass TP2::storeCurrentPoseResponse
  :super ros::object
  :slots (_succeed ))

(defmethod TP2::storeCurrentPoseResponse
  (:init
   (&key
    ((:succeed __succeed) nil)
    )
   (send-super :init)
   (setq _succeed __succeed)
   self)
  (:succeed
   (&optional __succeed)
   (if __succeed (setq _succeed __succeed)) _succeed)
  (:serialization-length
   ()
   (+
    ;; bool _succeed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _succeed
       (if _succeed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _succeed
     (setq _succeed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass TP2::storeCurrentPose
  :super ros::object
  :slots ())

(setf (get TP2::storeCurrentPose :md5sum-) "76cdbda74b9c2ca801810b792eae59ca")
(setf (get TP2::storeCurrentPose :datatype-) "TP2/storeCurrentPose")
(setf (get TP2::storeCurrentPose :request) TP2::storeCurrentPoseRequest)
(setf (get TP2::storeCurrentPose :response) TP2::storeCurrentPoseResponse)

(defmethod TP2::storeCurrentPoseRequest
  (:response () (instance TP2::storeCurrentPoseResponse :init)))

(setf (get TP2::storeCurrentPoseRequest :md5sum-) "76cdbda74b9c2ca801810b792eae59ca")
(setf (get TP2::storeCurrentPoseRequest :datatype-) "TP2/storeCurrentPoseRequest")
(setf (get TP2::storeCurrentPoseRequest :definition-)
      "string azrt
---
bool succeed

")

(setf (get TP2::storeCurrentPoseResponse :md5sum-) "76cdbda74b9c2ca801810b792eae59ca")
(setf (get TP2::storeCurrentPoseResponse :datatype-) "TP2/storeCurrentPoseResponse")
(setf (get TP2::storeCurrentPoseResponse :definition-)
      "string azrt
---
bool succeed

")



(provide :TP2/storeCurrentPose "76cdbda74b9c2ca801810b792eae59ca")


