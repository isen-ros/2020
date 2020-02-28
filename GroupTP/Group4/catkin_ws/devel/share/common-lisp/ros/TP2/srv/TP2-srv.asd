
(cl:in-package :asdf)

(defsystem "TP2-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "AnnotatedPose" :depends-on ("_package_AnnotatedPose"))
    (:file "_package_AnnotatedPose" :depends-on ("_package"))
    (:file "storeCurrentPose" :depends-on ("_package_storeCurrentPose"))
    (:file "_package_storeCurrentPose" :depends-on ("_package"))
  ))