;; Auto-generated. Do not edit!


(when (boundp 'ai_robot_rctl_server::RctlMapMetaData)
  (if (not (find-package "AI_ROBOT_RCTL_SERVER"))
    (make-package "AI_ROBOT_RCTL_SERVER"))
  (shadow 'RctlMapMetaData (find-package "AI_ROBOT_RCTL_SERVER")))
(unless (find-package "AI_ROBOT_RCTL_SERVER::RCTLMAPMETADATA")
  (make-package "AI_ROBOT_RCTL_SERVER::RCTLMAPMETADATA"))

(in-package "ROS")
;;//! \htmlinclude RctlMapMetaData.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ai_robot_rctl_server::RctlMapMetaData
  :super ros::object
  :slots (_name _data ))

(defmethod ai_robot_rctl_server::RctlMapMetaData
  (:init
   (&key
    ((:name __name) (instance std_msgs::String :init))
    ((:data __data) (instance nav_msgs::MapMetaData :init))
    )
   (send-super :init)
   (setq _name __name)
   (setq _data __data)
   self)
  (:name
   (&rest __name)
   (if (keywordp (car __name))
       (send* _name __name)
     (progn
       (if __name (setq _name (car __name)))
       _name)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _name
    (send _name :serialization-length)
    ;; nav_msgs/MapMetaData _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _name
       (send _name :serialize s)
     ;; nav_msgs/MapMetaData _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _name
     (send _name :deserialize buf ptr-) (incf ptr- (send _name :serialization-length))
   ;; nav_msgs/MapMetaData _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(setf (get ai_robot_rctl_server::RctlMapMetaData :md5sum-) "b49a4f33aa8f12c7f46b99506f489601")
(setf (get ai_robot_rctl_server::RctlMapMetaData :datatype-) "ai_robot_rctl_server/RctlMapMetaData")
(setf (get ai_robot_rctl_server::RctlMapMetaData :definition-)
      "std_msgs/String name
nav_msgs/MapMetaData data

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :ai_robot_rctl_server/RctlMapMetaData "b49a4f33aa8f12c7f46b99506f489601")


