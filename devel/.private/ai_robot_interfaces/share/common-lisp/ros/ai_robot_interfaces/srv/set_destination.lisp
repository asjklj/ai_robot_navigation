; Auto-generated. Do not edit!


(cl:in-package ai_robot_interfaces-srv)


;//! \htmlinclude set_destination-request.msg.html

(cl:defclass <set_destination-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass set_destination-request (<set_destination-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_destination-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_destination-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ai_robot_interfaces-srv:<set_destination-request> is deprecated: use ai_robot_interfaces-srv:set_destination-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <set_destination-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robot_interfaces-srv:x-val is deprecated.  Use ai_robot_interfaces-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <set_destination-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robot_interfaces-srv:y-val is deprecated.  Use ai_robot_interfaces-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <set_destination-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robot_interfaces-srv:z-val is deprecated.  Use ai_robot_interfaces-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_destination-request>) ostream)
  "Serializes a message object of type '<set_destination-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_destination-request>) istream)
  "Deserializes a message object of type '<set_destination-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_destination-request>)))
  "Returns string type for a service object of type '<set_destination-request>"
  "ai_robot_interfaces/set_destinationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_destination-request)))
  "Returns string type for a service object of type 'set_destination-request"
  "ai_robot_interfaces/set_destinationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_destination-request>)))
  "Returns md5sum for a message object of type '<set_destination-request>"
  "e4fcf36e5fed223dc6e0551e5302eab7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_destination-request)))
  "Returns md5sum for a message object of type 'set_destination-request"
  "e4fcf36e5fed223dc6e0551e5302eab7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_destination-request>)))
  "Returns full string definition for message of type '<set_destination-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_destination-request)))
  "Returns full string definition for message of type 'set_destination-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_destination-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_destination-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_destination-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
;//! \htmlinclude set_destination-response.msg.html

(cl:defclass <set_destination-response> (roslisp-msg-protocol:ros-message)
  ((set_ok
    :reader set_ok
    :initarg :set_ok
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_destination-response (<set_destination-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_destination-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_destination-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ai_robot_interfaces-srv:<set_destination-response> is deprecated: use ai_robot_interfaces-srv:set_destination-response instead.")))

(cl:ensure-generic-function 'set_ok-val :lambda-list '(m))
(cl:defmethod set_ok-val ((m <set_destination-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ai_robot_interfaces-srv:set_ok-val is deprecated.  Use ai_robot_interfaces-srv:set_ok instead.")
  (set_ok m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_destination-response>) ostream)
  "Serializes a message object of type '<set_destination-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_ok) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_destination-response>) istream)
  "Deserializes a message object of type '<set_destination-response>"
    (cl:setf (cl:slot-value msg 'set_ok) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_destination-response>)))
  "Returns string type for a service object of type '<set_destination-response>"
  "ai_robot_interfaces/set_destinationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_destination-response)))
  "Returns string type for a service object of type 'set_destination-response"
  "ai_robot_interfaces/set_destinationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_destination-response>)))
  "Returns md5sum for a message object of type '<set_destination-response>"
  "e4fcf36e5fed223dc6e0551e5302eab7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_destination-response)))
  "Returns md5sum for a message object of type 'set_destination-response"
  "e4fcf36e5fed223dc6e0551e5302eab7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_destination-response>)))
  "Returns full string definition for message of type '<set_destination-response>"
  (cl:format cl:nil "bool set_ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_destination-response)))
  "Returns full string definition for message of type 'set_destination-response"
  (cl:format cl:nil "bool set_ok~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_destination-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_destination-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_destination-response
    (cl:cons ':set_ok (set_ok msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_destination)))
  'set_destination-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_destination)))
  'set_destination-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_destination)))
  "Returns string type for a service object of type '<set_destination>"
  "ai_robot_interfaces/set_destination")