;; Auto-generated. Do not edit!


(when (boundp 'ai_robot_interfaces::TopoMetric)
  (if (not (find-package "AI_ROBOT_INTERFACES"))
    (make-package "AI_ROBOT_INTERFACES"))
  (shadow 'TopoMetric (find-package "AI_ROBOT_INTERFACES")))
(unless (find-package "AI_ROBOT_INTERFACES::TOPOMETRIC")
  (make-package "AI_ROBOT_INTERFACES::TOPOMETRIC"))

(in-package "ROS")
;;//! \htmlinclude TopoMetric.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass ai_robot_interfaces::TopoMetric
  :super ros::object
  :slots (_vertices _edges ))

(defmethod ai_robot_interfaces::TopoMetric
  (:init
   (&key
    ((:vertices __vertices) ())
    ((:edges __edges) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _vertices __vertices)
   (setq _edges __edges)
   self)
  (:vertices
   (&rest __vertices)
   (if (keywordp (car __vertices))
       (send* _vertices __vertices)
     (progn
       (if __vertices (setq _vertices (car __vertices)))
       _vertices)))
  (:edges
   (&optional __edges)
   (if __edges (setq _edges __edges)) _edges)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PointStamped[] _vertices
    (apply #'+ (send-all _vertices :serialization-length)) 4
    ;; int32[] _edges
    (* 4    (length _edges)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PointStamped[] _vertices
     (write-long (length _vertices) s)
     (dolist (elem _vertices)
       (send elem :serialize s)
       )
     ;; int32[] _edges
     (write-long (length _edges) s)
     (dotimes (i (length _edges))
       (write-long (elt _edges i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PointStamped[] _vertices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vertices (let (r) (dotimes (i n) (push (instance geometry_msgs::PointStamped :init) r)) r))
     (dolist (elem- _vertices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _edges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _edges (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _edges i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ai_robot_interfaces::TopoMetric :md5sum-) "db10479c554715cffb6327317209d0b6")
(setf (get ai_robot_interfaces::TopoMetric :datatype-) "ai_robot_interfaces/TopoMetric")
(setf (get ai_robot_interfaces::TopoMetric :definition-)
      "geometry_msgs/PointStamped[] vertices
int32[] edges

================================================================================
MSG: geometry_msgs/PointStamped
# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :ai_robot_interfaces/TopoMetric "db10479c554715cffb6327317209d0b6")


