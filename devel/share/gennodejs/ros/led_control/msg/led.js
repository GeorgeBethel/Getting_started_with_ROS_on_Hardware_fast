// Auto-generated. Do not edit!

// (in-package led_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class led {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ledState = null;
    }
    else {
      if (initObj.hasOwnProperty('ledState')) {
        this.ledState = initObj.ledState
      }
      else {
        this.ledState = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type led
    // Serialize message field [ledState]
    bufferOffset = _serializer.bool(obj.ledState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type led
    let len;
    let data = new led(null);
    // Deserialize message field [ledState]
    data.ledState = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'led_control/led';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '781db327ac3ac8924f798b25d3f9bd79';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool ledState #string to hold the desired LED state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new led(null);
    if (msg.ledState !== undefined) {
      resolved.ledState = msg.ledState;
    }
    else {
      resolved.ledState = false
    }

    return resolved;
    }
};

module.exports = led;
