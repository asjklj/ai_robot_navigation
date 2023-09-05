// Auto-generated. Do not edit!

// (in-package ai_robot_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MpTraj {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map_points = null;
      this.trajectory = null;
    }
    else {
      if (initObj.hasOwnProperty('map_points')) {
        this.map_points = initObj.map_points
      }
      else {
        this.map_points = [];
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = new nav_msgs.msg.Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MpTraj
    // Serialize message field [map_points]
    // Serialize the length for message field [map_points]
    bufferOffset = _serializer.uint32(obj.map_points.length, buffer, bufferOffset);
    obj.map_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PointStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [trajectory]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.trajectory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MpTraj
    let len;
    let data = new MpTraj(null);
    // Deserialize message field [map_points]
    // Deserialize array length for message field [map_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.map_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.map_points[i] = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [trajectory]
    data.trajectory = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.map_points.forEach((val) => {
      length += geometry_msgs.msg.PointStamped.getMessageSize(val);
    });
    length += nav_msgs.msg.Path.getMessageSize(object.trajectory);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ai_robot_interfaces/MpTraj';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c82395b8bdda0452a5f88bde8d1b1a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PointStamped[] map_points
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MpTraj(null);
    if (msg.map_points !== undefined) {
      resolved.map_points = new Array(msg.map_points.length);
      for (let i = 0; i < resolved.map_points.length; ++i) {
        resolved.map_points[i] = geometry_msgs.msg.PointStamped.Resolve(msg.map_points[i]);
      }
    }
    else {
      resolved.map_points = []
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = nav_msgs.msg.Path.Resolve(msg.trajectory)
    }
    else {
      resolved.trajectory = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

module.exports = MpTraj;
