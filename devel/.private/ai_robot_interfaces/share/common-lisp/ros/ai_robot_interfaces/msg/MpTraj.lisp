; Auto-generated. Do not edit!


(cl:in-package ai_robot_interfaces-msg)


;//! \htmlinclude MpTraj.msg.html

(cl:defclass <MpTraj> (roslisp-msg-protocol:ros-message)
  ((map_points
    :reader map_points
    :initarg :map_points
    :type (cl:vector geometry_msgs-msg:PointStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PointStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PointStamped)))
   (trajectory
    :reader trajectory
    :initarg :trajectory
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass MpTraj (<MpTraj>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MpTraj>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MpTraj)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ai_robot_interfaces-msg:<MpTraj> is deprecated: use ai_robot_interfaces-msg:MpTraj instead.")))

(cl:ensure-generic-function 'map_points-val :lambda-list '(m))
(cl:defmethod map_points-val ((m <MpTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robot_interfaces-msg:map_points-val is deprecated.  Use ai_robot_interfaces-msg:map_points instead.")
  (map_points m))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <MpTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robot_interfaces-msg:trajectory-val is deprecated.  Use ai_robot_interfaces-msg:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MpTraj>) ostream)
  "Serializes a message object of type '<MpTraj>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'map_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'map_points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MpTraj>) istream)
  "Deserializes a message object of type '<MpTraj>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'map_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'map_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PointStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MpTraj>)))
  "Returns string type for a message object of type '<MpTraj>"
  "ai_robot_interfaces/MpTraj")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MpTraj)))
  "Returns string type for a message object of type 'MpTraj"
  "ai_robot_interfaces/MpTraj")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MpTraj>)))
  "Returns md5sum for a message object of type '<MpTraj>"
  "6c82395b8bdda0452a5f88bde8d1b1a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MpTraj)))
  "Returns md5sum for a message object of type 'MpTraj"
  "6c82395b8bdda0452a5f88bde8d1b1a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MpTraj>)))
  "Returns full string definition for message of type '<MpTraj>"
  (cl:format cl:nil "geometry_msgs/PointStamped[] map_points~%nav_msgs/Path trajectory~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MpTraj)))
  "Returns full string definition for message of type 'MpTraj"
  (cl:format cl:nil "geometry_msgs/PointStamped[] map_points~%nav_msgs/Path trajectory~%~%================================================================================~%MSG: geometry_msgs/PointStamped~%# This represents a Point with reference coordinate frame and timestamp~%Header header~%Point point~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MpTraj>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'map_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MpTraj>))
  "Converts a ROS message object to a list"
  (cl:list 'MpTraj
    (cl:cons ':map_points (map_points msg))
    (cl:cons ':trajectory (trajectory msg))
))
