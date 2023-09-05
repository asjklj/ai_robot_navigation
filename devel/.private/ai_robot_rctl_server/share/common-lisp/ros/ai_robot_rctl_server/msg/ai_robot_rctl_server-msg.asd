
(cl:in-package :asdf)

(defsystem "ai_robot_rctl_server-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RctlMapMetaData" :depends-on ("_package_RctlMapMetaData"))
    (:file "_package_RctlMapMetaData" :depends-on ("_package"))
  ))