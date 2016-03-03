
(cl:in-package :asdf)

(defsystem "tactilesensors-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "StaticData" :depends-on ("_package_StaticData"))
    (:file "_package_StaticData" :depends-on ("_package"))
    (:file "DynamicData" :depends-on ("_package_DynamicData"))
    (:file "_package_DynamicData" :depends-on ("_package"))
    (:file "Array1d" :depends-on ("_package_Array1d"))
    (:file "_package_Array1d" :depends-on ("_package"))
  ))