;; Auto-generated. Do not edit!


(when (boundp 'ai_robot_interfaces::MpTraj)
  (if (not (find-package "AI_ROBOT_INTERFACES"))
    (make-package "AI_ROBOT_INTERFACES"))
  (shadow 'MpTraj (find-package "AI_ROBOT_INTERFACES")))
(unless (find-package "AI_ROBOT_INTERFACES::MPTRAJ")
  (make-package "AI_ROBOT_INTERFACES::MPTRAJ"))

(in-package "ROS")
;;//! \htmlinclude MpTraj.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))


(defclass ai_robot_interfaces::MpTraj
  :super ros::object
  :slots (_map_points _trajectory ))

(defmethod ai_robot_interfaces::MpTraj
  (:init
   (&key
    ((:map_points __map_points) ())
    ((:trajectory __trajectory) (instance nav_msgs::Path :init))
    )
   (send-super :init)
   (setq _map_points __map_points)
   (setq _trajectory __trajectory)
   self)
  (:map_points
   (&rest __map_points)
   (if (keywordp (car __map_points))
       (send* _map_points __map_points)
     (progn
       (if __map_points (setq _map_points (car __map_points)))
       _map_points)))
  (:trajectory
   (&rest __trajectory)
   (if (keywordp (car __trajectory))
       (send* _trajectory __trajectory)
     (progn
       (if __trajectory (setq _trajectory (car __trajectory)))
       _trajectory)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PointStamped[] _map_points
    (apply #'+ (send-all _map_points :serialization-length)) 4
    ;; nav_msgs/Path _trajectory
    (send _trajectory :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PointStamped[] _map_points
     (write-long (length _map_points) s)
     (dolist (elem _map_points)
       (send elem :serialize s)
       )
     ;; nav_msgs/Path _trajectory
       (send _trajectory :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PointStamped[] _map_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_points (let (r) (dotimes (i n) (push (instance geometry_msgs::PointStamped :init) r)) r))
     (dolist (elem- _map_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; nav_msgs/Path _trajectory
     (send _trajectory :deserialize buf ptr-) (incf ptr- (send _trajectory :serialization-length))
   ;;
   self)
  )

(setf (get ai_robot_interfaces::MpTraj :md5sum-) "6c82395b8bdda0452a5f88bde8d1b1a0")
(setf (get ai_robot_interfaces::MpTraj :datatype-) "ai_robot_interfaces/MpTraj")
(setf (get ai_robot_interfaces::MpTraj :definition-)
      "geometry_msgs/PointStamped[] map_points
nav_msgs/Path trajectory

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

================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :ai_robot_interfaces/MpTraj "6c82395b8bdda0452a5f88bde8d1b1a0")


