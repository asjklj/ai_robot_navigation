// Auto-generated. Do not edit!

// (in-package ai_robot_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TopoMetric {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vertices = null;
      this.edges = null;
    }
    else {
      if (initObj.hasOwnProperty('vertices')) {
        this.vertices = initObj.vertices
      }
      else {
        this.vertices = [];
      }
      if (initObj.hasOwnProperty('edges')) {
        this.edges = initObj.edges
      }
      else {
        this.edges = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TopoMetric
    // Serialize message field [vertices]
    // Serialize the length for message field [vertices]
    bufferOffset = _serializer.uint32(obj.vertices.length, buffer, bufferOffset);
    obj.vertices.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PointStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [edges]
    bufferOffset = _arraySerializer.int32(obj.edges, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TopoMetric
    let len;
    let data = new TopoMetric(null);
    // Deserialize message field [vertices]
    // Deserialize array length for message field [vertices]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vertices = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vertices[i] = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [edges]
    data.edges = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.vertices.forEach((val) => {
      length += geometry_msgs.msg.PointStamped.getMessageSize(val);
    });
    length += 4 * object.edges.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ai_robot_interfaces/TopoMetric';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db10479c554715cffb6327317209d0b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PointStamped[] vertices
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TopoMetric(null);
    if (msg.vertices !== undefined) {
      resolved.vertices = new Array(msg.vertices.length);
      for (let i = 0; i < resolved.vertices.length; ++i) {
        resolved.vertices[i] = geometry_msgs.msg.PointStamped.Resolve(msg.vertices[i]);
      }
    }
    else {
      resolved.vertices = []
    }

    if (msg.edges !== undefined) {
      resolved.edges = msg.edges;
    }
    else {
      resolved.edges = []
    }

    return resolved;
    }
};

module.exports = TopoMetric;
