
(cl:in-package :asdf)

(defsystem "tp_2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Message1" :depends-on ("_package_Message1"))
    (:file "_package_Message1" :depends-on ("_package"))
  ))