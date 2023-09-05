; Auto-generated. Do not edit!


(cl:in-package ai_robot_interfaces-srv)


;//! \htmlinclude restart_nav-request.msg.html

(cl:defclass <restart_nav-request> (roslisp-msg-protocol:ros-message)
  ((in
    :reader in
    :initarg :in
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass restart_nav-request (<restart_nav-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <restart_nav-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'restart_nav-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ai_robot_interfaces-srv:<restart_nav-request> is deprecated: use ai_robot_interfaces-srv:restart_nav-request instead.")))

(cl:ensure-generic-function 'in-val :lambda-list '(m))
(cl:defmethod in-val ((m <restart_nav-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robot_interfaces-srv:in-val is deprecated.  Use ai_robot_interfaces-srv:in instead.")
  (in m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <restart_nav-request>) ostream)
  "Serializes a message object of type '<restart_nav-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'in) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <restart_nav-request>) istream)
  "Deserializes a message object of type '<restart_nav-request>"
    (cl:setf (cl:slot-value msg 'in) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<restart_nav-request>)))
  "Returns string type for a service object of type '<restart_nav-request>"
  "ai_robot_interfaces/restart_navRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'restart_nav-request)))
  "Returns string type for a service object of type 'restart_nav-request"
  "ai_robot_interfaces/restart_navRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<restart_nav-request>)))
  "Returns md5sum for a message object of type '<restart_nav-request>"
  "84f711453560507221d036b9e0cffe3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'restart_nav-request)))
  "Returns md5sum for a message object of type 'restart_nav-request"
  "84f711453560507221d036b9e0cffe3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<restart_nav-request>)))
  "Returns full string definition for message of type '<restart_nav-request>"
  (cl:format cl:nil "bool in~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'restart_nav-request)))
  "Returns full string definition for message of type 'restart_nav-request"
  (cl:format cl:nil "bool in~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <restart_nav-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <restart_nav-request>))
  "Converts a ROS message object to a list"
  (cl:list 'restart_nav-request
    (cl:cons ':in (in msg))
))
;//! \htmlinclude restart_nav-response.msg.html

(cl:defclass <restart_nav-response> (roslisp-msg-protocol:ros-message)
  ((set_ok
    :reader set_ok
    :initarg :set_ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass restart_nav-response (<restart_nav-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <restart_nav-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'restart_nav-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ai_robot_interfaces-srv:<restart_nav-response> is deprecated: use ai_robot_interfaces-srv:restart_nav-response instead.")))

(cl:ensure-generic-function 'set_ok-val :lambda-list '(m))
(cl:defmethod set_ok-val ((m <restart_nav-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robot_interfaces-srv:set_ok-val is deprecated.  Use ai_robot_interfaces-srv:set_ok instead.")
  (set_ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <restart_nav-response>) ostream)
  "Serializes a message object of type '<restart_nav-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <restart_nav-response>) istream)
  "Deserializes a message object of type '<restart_nav-response>"
    (cl:setf (cl:slot-value msg 'set_ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<restart_nav-response>)))
  "Returns string type for a service object of type '<restart_nav-response>"
  "ai_robot_interfaces/restart_navResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'restart_nav-response)))
  "Returns string type for a service object of type 'restart_nav-response"
  "ai_robot_interfaces/restart_navResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<restart_nav-response>)))
  "Returns md5sum for a message object of type '<restart_nav-response>"
  "84f711453560507221d036b9e0cffe3b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'restart_nav-response)))
  "Returns md5sum for a message object of type 'restart_nav-response"
  "84f711453560507221d036b9e0cffe3b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<restart_nav-response>)))
  "Returns full string definition for message of type '<restart_nav-response>"
  (cl:format cl:nil "bool set_ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'restart_nav-response)))
  "Returns full string definition for message of type 'restart_nav-response"
  (cl:format cl:nil "bool set_ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <restart_nav-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <restart_nav-response>))
  "Converts a ROS message object to a list"
  (cl:list 'restart_nav-response
    (cl:cons ':set_ok (set_ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'restart_nav)))
  'restart_nav-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'restart_nav)))
  'restart_nav-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'restart_nav)))
  "Returns string type for a service object of type '<restart_nav>"
  "ai_robot_interfaces/restart_nav")