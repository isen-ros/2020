// Auto-generated. Do not edit!

// (in-package class_6.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class hourRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.test = null;
    }
    else {
      if (initObj.hasOwnProperty('test')) {
        this.test = initObj.test
      }
      else {
        this.test = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hourRequest
    // Serialize message field [test]
    bufferOffset = _serializer.int64(obj.test, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hourRequest
    let len;
    let data = new hourRequest(null);
    // Deserialize message field [test]
    data.test = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'class_6/hourRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ababf824dbf6c5657a63dc70582ba71';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 test
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hourRequest(null);
    if (msg.test !== undefined) {
      resolved.test = msg.test;
    }
    else {
      resolved.test = 0
    }

    return resolved;
    }
};

class hourResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hour = null;
    }
    else {
      if (initObj.hasOwnProperty('hour')) {
        this.hour = initObj.hour
      }
      else {
        this.hour = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hourResponse
    // Serialize message field [hour]
    bufferOffset = _serializer.int64(obj.hour, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hourResponse
    let len;
    let data = new hourResponse(null);
    // Deserialize message field [hour]
    data.hour = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'class_6/hourResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db6ae70cde56404ad0ee64c00df256d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 hour
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hourResponse(null);
    if (msg.hour !== undefined) {
      resolved.hour = msg.hour;
    }
    else {
      resolved.hour = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: hourRequest,
  Response: hourResponse,
  md5sum() { return '909db46b8445c3c9ddb06c5737706275'; },
  datatype() { return 'class_6/hour'; }
};
