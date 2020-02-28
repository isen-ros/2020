
(cl:in-package :asdf)

(defsystem "class_6-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "hour" :depends-on ("_package_hour"))
    (:file "_package_hour" :depends-on ("_package"))
  ))