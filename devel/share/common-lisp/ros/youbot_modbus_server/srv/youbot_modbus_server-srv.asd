
(cl:in-package :asdf)

(defsystem "youbot_modbus_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "YoubotModbusButtonMsg" :depends-on ("_package_YoubotModbusButtonMsg"))
    (:file "_package_YoubotModbusButtonMsg" :depends-on ("_package"))
    (:file "YoubotModbusSensorMsg" :depends-on ("_package_YoubotModbusSensorMsg"))
    (:file "_package_YoubotModbusSensorMsg" :depends-on ("_package"))
  ))