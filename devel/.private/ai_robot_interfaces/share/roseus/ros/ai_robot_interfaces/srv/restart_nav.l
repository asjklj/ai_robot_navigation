;; Auto-generated. Do not edit!


(when (boundp 'ai_robot_interfaces::restart_nav)
  (if (not (find-package "AI_ROBOT_INTERFACES"))
    (make-package "AI_ROBOT_INTERFACES"))
  (shadow 'restart_nav (find-package "AI_ROBOT_INTERFACES")))
(unless (find-package "AI_ROBOT_INTERFACES::RESTART_NAV")
  (make-package "AI_ROBOT_INTERFACES::RESTART_NAV"))
(unless (find-package "AI_ROBOT_INTERFACES::RESTART_NAVREQUEST")
  (make-package "AI_ROBOT_INTERFACES::RESTART_NAVREQUEST"))
(unless (find-package "AI_ROBOT_INTERFACES::RESTART_NAVRESPONSE")
  (make-package "AI_ROBOT_INTERFACES::RESTART_NAVRESPONSE"))

(in-package "ROS")





(defclass ai_robot_interfaces::restart_navRequest
  :super ros::object
  :slots (_in ))

(defmethod ai_robot_interfaces::restart_navRequest
  (:init
   (&key
    ((:in __in) nil)
    )
   (send-super :init)
   (setq _in __in)
   self)
  (:in
   (&optional (__in :null))
   (if (not (eq __in :null)) (setq _in __in)) _in)
  (:serialization-length
   ()
   (+
    ;; bool _in
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _in
       (if _in (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _in
     (setq _in (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ai_robot_interfaces::restart_navResponse
  :super ros::object
  :slots (_set_ok ))

(defmethod ai_robot_interfaces::restart_navResponse
  (:init
   (&key
    ((:set_ok __set_ok) nil)
    )
   (send-super :init)
   (setq _set_ok __set_ok)
   self)
  (:set_ok
   (&optional (__set_ok :null))
   (if (not (eq __set_ok :null)) (setq _set_ok __set_ok)) _set_ok)
  (:serialization-length
   ()
   (+
    ;; bool _set_ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set_ok
       (if _set_ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set_ok
     (setq _set_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ai_robot_interfaces::restart_nav
  :super ros::object
  :slots ())

(setf (get ai_robot_interfaces::restart_nav :md5sum-) "84f711453560507221d036b9e0cffe3b")
(setf (get ai_robot_interfaces::restart_nav :datatype-) "ai_robot_interfaces/restart_nav")
(setf (get ai_robot_interfaces::restart_nav :request) ai_robot_interfaces::restart_navRequest)
(setf (get ai_robot_interfaces::restart_nav :response) ai_robot_interfaces::restart_navResponse)

(defmethod ai_robot_interfaces::restart_navRequest
  (:response () (instance ai_robot_interfaces::restart_navResponse :init)))

(setf (get ai_robot_interfaces::restart_navRequest :md5sum-) "84f711453560507221d036b9e0cffe3b")
(setf (get ai_robot_interfaces::restart_navRequest :datatype-) "ai_robot_interfaces/restart_navRequest")
(setf (get ai_robot_interfaces::restart_navRequest :definition-)
      "bool in
---
bool set_ok

")

(setf (get ai_robot_interfaces::restart_navResponse :md5sum-) "84f711453560507221d036b9e0cffe3b")
(setf (get ai_robot_interfaces::restart_navResponse :datatype-) "ai_robot_interfaces/restart_navResponse")
(setf (get ai_robot_interfaces::restart_navResponse :definition-)
      "bool in
---
bool set_ok

")



(provide :ai_robot_interfaces/restart_nav "84f711453560507221d036b9e0cffe3b")


