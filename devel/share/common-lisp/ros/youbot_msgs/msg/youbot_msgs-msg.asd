
(cl:in-package :asdf)

(defsystem "youbot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "UpdateDependency" :depends-on ("_package_UpdateDependency"))
    (:file "_package_UpdateDependency" :depends-on ("_package"))
  ))