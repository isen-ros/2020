// Auto-generated. Do not edit!

// (in-package TP2.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class storeCurrentPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.azrt = null;
    }
    else {
      if (initObj.hasOwnProperty('azrt')) {
        this.azrt = initObj.azrt
      }
      else {
        this.azrt = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type storeCurrentPoseRequest
    // Serialize message field [azrt]
    bufferOffset = _serializer.string(obj.azrt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type storeCurrentPoseRequest
    let len;
    let data = new storeCurrentPoseRequest(null);
    // Deserialize message field [azrt]
    data.azrt = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.azrt.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'TP2/storeCurrentPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0240f14b6a488cd5ec0fa1bc7d99ee4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string azrt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new storeCurrentPoseRequest(null);
    if (msg.azrt !== undefined) {
      resolved.azrt = msg.azrt;
    }
    else {
      resolved.azrt = ''
    }

    return resolved;
    }
};

class storeCurrentPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.succeed = null;
    }
    else {
      if (initObj.hasOwnProperty('succeed')) {
        this.succeed = initObj.succeed
      }
      else {
        this.succeed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type storeCurrentPoseResponse
    // Serialize message field [succeed]
    bufferOffset = _serializer.bool(obj.succeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type storeCurrentPoseResponse
    let len;
    let data = new storeCurrentPoseResponse(null);
    // Deserialize message field [succeed]
    data.succeed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'TP2/storeCurrentPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d9c3b918a0afafe09791ef8d7853918';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool succeed
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new storeCurrentPoseResponse(null);
    if (msg.succeed !== undefined) {
      resolved.succeed = msg.succeed;
    }
    else {
      resolved.succeed = false
    }

    return resolved;
    }
};

module.exports = {
  Request: storeCurrentPoseRequest,
  Response: storeCurrentPoseResponse,
  md5sum() { return '76cdbda74b9c2ca801810b792eae59ca'; },
  datatype() { return 'TP2/storeCurrentPose'; }
};
