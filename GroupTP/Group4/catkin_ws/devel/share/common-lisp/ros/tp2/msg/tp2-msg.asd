
(cl:in-package :asdf)

(defsystem "tp2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "AnnotatedPose" :depends-on ("_package_AnnotatedPose"))
    (:file "_package_AnnotatedPose" :depends-on ("_package"))
    (:file "Message1" :depends-on ("_package_Message1"))
    (:file "_package_Message1" :depends-on ("_package"))
  ))