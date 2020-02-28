// Auto-generated. Do not edit!

// (in-package tp_2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Message1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Base = null;
    }
    else {
      if (initObj.hasOwnProperty('Base')) {
        this.Base = initObj.Base
      }
      else {
        this.Base = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Message1
    // Serialize message field [Base]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.Base, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Message1
    let len;
    let data = new Message1(null);
    // Deserialize message field [Base]
    data.Base = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tp_2/Message1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd811f96aa4121df7305ae402a0611d51';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist Base
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new Message1(null);
    if (msg.Base !== undefined) {
      resolved.Base = geometry_msgs.msg.Twist.Resolve(msg.Base)
    }
    else {
      resolved.Base = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = Message1;
