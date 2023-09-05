// Auto-generated. Do not edit!

// (in-package ai_robot_interfaces.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class restart_navRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.in = null;
    }
    else {
      if (initObj.hasOwnProperty('in')) {
        this.in = initObj.in
      }
      else {
        this.in = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type restart_navRequest
    // Serialize message field [in]
    bufferOffset = _serializer.bool(obj.in, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type restart_navRequest
    let len;
    let data = new restart_navRequest(null);
    // Deserialize message field [in]
    data.in = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ai_robot_interfaces/restart_navRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e55039fca2a84e0cfe80e419f0bfb3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool in
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new restart_navRequest(null);
    if (msg.in !== undefined) {
      resolved.in = msg.in;
    }
    else {
      resolved.in = false
    }

    return resolved;
    }
};

class restart_navResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_ok = null;
    }
    else {
      if (initObj.hasOwnProperty('set_ok')) {
        this.set_ok = initObj.set_ok
      }
      else {
        this.set_ok = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type restart_navResponse
    // Serialize message field [set_ok]
    bufferOffset = _serializer.bool(obj.set_ok, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type restart_navResponse
    let len;
    let data = new restart_navResponse(null);
    // Deserialize message field [set_ok]
    data.set_ok = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ai_robot_interfaces/restart_navResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea821051b80d6301bad612e03b952799';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool set_ok
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new restart_navResponse(null);
    if (msg.set_ok !== undefined) {
      resolved.set_ok = msg.set_ok;
    }
    else {
      resolved.set_ok = false
    }

    return resolved;
    }
};

module.exports = {
  Request: restart_navRequest,
  Response: restart_navResponse,
  md5sum() { return '84f711453560507221d036b9e0cffe3b'; },
  datatype() { return 'ai_robot_interfaces/restart_nav'; }
};
