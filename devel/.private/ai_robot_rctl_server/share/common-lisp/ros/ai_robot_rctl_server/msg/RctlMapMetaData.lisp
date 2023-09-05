; Auto-generated. Do not edit!


(cl:in-package ai_robot_rctl_server-msg)


;//! \htmlinclude RctlMapMetaData.msg.html

(cl:defclass <RctlMapMetaData> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (data
    :reader data
    :initarg :data
    :type nav_msgs-msg:MapMetaData
    :initform (cl:make-instance 'nav_msgs-msg:MapMetaData)))
)

(cl:defclass RctlMapMetaData (<RctlMapMetaData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RctlMapMetaData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RctlMapMetaData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ai_robot_rctl_server-msg:<RctlMapMetaData> is deprecated: use ai_robot_rctl_server-msg:RctlMapMetaData instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RctlMapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robot_rctl_server-msg:name-val is deprecated.  Use ai_robot_rctl_server-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <RctlMapMetaData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robot_rctl_server-msg:data-val is deprecated.  Use ai_robot_rctl_server-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RctlMapMetaData>) ostream)
  "Serializes a message object of type '<RctlMapMetaData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RctlMapMetaData>) istream)
  "Deserializes a message object of type '<RctlMapMetaData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RctlMapMetaData>)))
  "Returns string type for a message object of type '<RctlMapMetaData>"
  "ai_robot_rctl_server/RctlMapMetaData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RctlMapMetaData)))
  "Returns string type for a message object of type 'RctlMapMetaData"
  "ai_robot_rctl_server/RctlMapMetaData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RctlMapMetaData>)))
  "Returns md5sum for a message object of type '<RctlMapMetaData>"
  "b49a4f33aa8f12c7f46b99506f489601")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RctlMapMetaData)))
  "Returns md5sum for a message object of type 'RctlMapMetaData"
  "b49a4f33aa8f12c7f46b99506f489601")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RctlMapMetaData>)))
  "Returns full string definition for message of type '<RctlMapMetaData>"
  (cl:format cl:nil "std_msgs/String name~%nav_msgs/MapMetaData data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RctlMapMetaData)))
  "Returns full string definition for message of type 'RctlMapMetaData"
  (cl:format cl:nil "std_msgs/String name~%nav_msgs/MapMetaData data~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RctlMapMetaData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RctlMapMetaData>))
  "Converts a ROS message object to a list"
  (cl:list 'RctlMapMetaData
    (cl:cons ':name (name msg))
    (cl:cons ':data (data msg))
))
