;; Auto-generated. Do not edit!


(when (boundp 'tp2::Message1)
  (if (not (find-package "TP2"))
    (make-package "TP2"))
  (shadow 'Message1 (find-package "TP2")))
(unless (find-package "TP2::MESSAGE1")
  (make-package "TP2::MESSAGE1"))

(in-package "ROS")
;;//! \htmlinclude Message1.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tp2::Message1
  :super ros::object
  :slots (_pose _name ))

(defmethod tp2::Message1
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:name __name) "")
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _name (string __name))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tp2::Message1 :md5sum-) "f716db42957c7b57682e1bb8a22eae4a")
(setf (get tp2::Message1 :datatype-) "tp2/Message1")
(setf (get tp2::Message1 :definition-)
      "geometry_msgs/Pose pose
string name

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :tp2/Message1 "f716db42957c7b57682e1bb8a22eae4a")


