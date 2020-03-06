;; Auto-generated. Do not edit!


(when (boundp 'TP2::AnnotatedPose)
  (if (not (find-package "TP2"))
    (make-package "TP2"))
  (shadow 'AnnotatedPose (find-package "TP2")))
(unless (find-package "TP2::ANNOTATEDPOSE")
  (make-package "TP2::ANNOTATEDPOSE"))
(unless (find-package "TP2::ANNOTATEDPOSEREQUEST")
  (make-package "TP2::ANNOTATEDPOSEREQUEST"))
(unless (find-package "TP2::ANNOTATEDPOSERESPONSE")
  (make-package "TP2::ANNOTATEDPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass TP2::AnnotatedPoseRequest
  :super ros::object
  :slots (_name _pose ))

(defmethod TP2::AnnotatedPoseRequest
  (:init
   (&key
    ((:name __name) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _pose __pose)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass TP2::AnnotatedPoseResponse
  :super ros::object
  :slots ())

(defmethod TP2::AnnotatedPoseResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass TP2::AnnotatedPose
  :super ros::object
  :slots ())

(setf (get TP2::AnnotatedPose :md5sum-) "177d54286ddeee12eba514054bddffd5")
(setf (get TP2::AnnotatedPose :datatype-) "TP2/AnnotatedPose")
(setf (get TP2::AnnotatedPose :request) TP2::AnnotatedPoseRequest)
(setf (get TP2::AnnotatedPose :response) TP2::AnnotatedPoseResponse)

(defmethod TP2::AnnotatedPoseRequest
  (:response () (instance TP2::AnnotatedPoseResponse :init)))

(setf (get TP2::AnnotatedPoseRequest :md5sum-) "177d54286ddeee12eba514054bddffd5")
(setf (get TP2::AnnotatedPoseRequest :datatype-) "TP2/AnnotatedPoseRequest")
(setf (get TP2::AnnotatedPoseRequest :definition-)
      "string name
geometry_msgs/Pose pose

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
---


")

(setf (get TP2::AnnotatedPoseResponse :md5sum-) "177d54286ddeee12eba514054bddffd5")
(setf (get TP2::AnnotatedPoseResponse :datatype-) "TP2/AnnotatedPoseResponse")
(setf (get TP2::AnnotatedPoseResponse :definition-)
      "string name
geometry_msgs/Pose pose

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
---


")



(provide :TP2/AnnotatedPose "177d54286ddeee12eba514054bddffd5")


