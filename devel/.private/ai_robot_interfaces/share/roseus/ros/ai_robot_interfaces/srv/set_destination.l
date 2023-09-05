;; Auto-generated. Do not edit!


(when (boundp 'ai_robot_interfaces::set_destination)
  (if (not (find-package "AI_ROBOT_INTERFACES"))
    (make-package "AI_ROBOT_INTERFACES"))
  (shadow 'set_destination (find-package "AI_ROBOT_INTERFACES")))
(unless (find-package "AI_ROBOT_INTERFACES::SET_DESTINATION")
  (make-package "AI_ROBOT_INTERFACES::SET_DESTINATION"))
(unless (find-package "AI_ROBOT_INTERFACES::SET_DESTINATIONREQUEST")
  (make-package "AI_ROBOT_INTERFACES::SET_DESTINATIONREQUEST"))
(unless (find-package "AI_ROBOT_INTERFACES::SET_DESTINATIONRESPONSE")
  (make-package "AI_ROBOT_INTERFACES::SET_DESTINATIONRESPONSE"))

(in-package "ROS")





(defclass ai_robot_interfaces::set_destinationRequest
  :super ros::object
  :slots (_x _y _z ))

(defmethod ai_robot_interfaces::set_destinationRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ai_robot_interfaces::set_destinationResponse
  :super ros::object
  :slots (_set_ok ))

(defmethod ai_robot_interfaces::set_destinationResponse
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

(defclass ai_robot_interfaces::set_destination
  :super ros::object
  :slots ())

(setf (get ai_robot_interfaces::set_destination :md5sum-) "e4fcf36e5fed223dc6e0551e5302eab7")
(setf (get ai_robot_interfaces::set_destination :datatype-) "ai_robot_interfaces/set_destination")
(setf (get ai_robot_interfaces::set_destination :request) ai_robot_interfaces::set_destinationRequest)
(setf (get ai_robot_interfaces::set_destination :response) ai_robot_interfaces::set_destinationResponse)

(defmethod ai_robot_interfaces::set_destinationRequest
  (:response () (instance ai_robot_interfaces::set_destinationResponse :init)))

(setf (get ai_robot_interfaces::set_destinationRequest :md5sum-) "e4fcf36e5fed223dc6e0551e5302eab7")
(setf (get ai_robot_interfaces::set_destinationRequest :datatype-) "ai_robot_interfaces/set_destinationRequest")
(setf (get ai_robot_interfaces::set_destinationRequest :definition-)
      "float32 x
float32 y
float32 z
---
bool set_ok

")

(setf (get ai_robot_interfaces::set_destinationResponse :md5sum-) "e4fcf36e5fed223dc6e0551e5302eab7")
(setf (get ai_robot_interfaces::set_destinationResponse :datatype-) "ai_robot_interfaces/set_destinationResponse")
(setf (get ai_robot_interfaces::set_destinationResponse :definition-)
      "float32 x
float32 y
float32 z
---
bool set_ok

")



(provide :ai_robot_interfaces/set_destination "e4fcf36e5fed223dc6e0551e5302eab7")


