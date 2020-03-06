;; Auto-generated. Do not edit!


(when (boundp 'tp_2::Message1)
  (if (not (find-package "TP_2"))
    (make-package "TP_2"))
  (shadow 'Message1 (find-package "TP_2")))
(unless (find-package "TP_2::MESSAGE1")
  (make-package "TP_2::MESSAGE1"))

(in-package "ROS")
;;//! \htmlinclude Message1.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass tp_2::Message1
  :super ros::object
  :slots (_Base ))

(defmethod tp_2::Message1
  (:init
   (&key
    ((:Base __Base) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _Base __Base)
   self)
  (:Base
   (&rest __Base)
   (if (keywordp (car __Base))
       (send* _Base __Base)
     (progn
       (if __Base (setq _Base (car __Base)))
       _Base)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _Base
    (send _Base :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _Base
       (send _Base :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _Base
     (send _Base :deserialize buf ptr-) (incf ptr- (send _Base :serialization-length))
   ;;
   self)
  )

(setf (get tp_2::Message1 :md5sum-) "d811f96aa4121df7305ae402a0611d51")
(setf (get tp_2::Message1 :datatype-) "tp_2/Message1")
(setf (get tp_2::Message1 :definition-)
      "geometry_msgs/Twist Base

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :tp_2/Message1 "d811f96aa4121df7305ae402a0611d51")


