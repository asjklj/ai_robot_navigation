
(cl:in-package :asdf)

(defsystem "ai_robot_interfaces-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "restart_nav" :depends-on ("_package_restart_nav"))
    (:file "_package_restart_nav" :depends-on ("_package"))
    (:file "set_destination" :depends-on ("_package_set_destination"))
    (:file "_package_set_destination" :depends-on ("_package"))
  ))