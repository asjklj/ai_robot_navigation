
(cl:in-package :asdf)

(defsystem "ai_robot_interfaces-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
)
  :components ((:file "_package")
    (:file "MpTraj" :depends-on ("_package_MpTraj"))
    (:file "_package_MpTraj" :depends-on ("_package"))
    (:file "TopoMetric" :depends-on ("_package_TopoMetric"))
    (:file "_package_TopoMetric" :depends-on ("_package"))
  ))