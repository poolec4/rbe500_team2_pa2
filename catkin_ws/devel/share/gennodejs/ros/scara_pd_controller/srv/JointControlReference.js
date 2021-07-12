// Auto-generated. Do not edit!

// (in-package scara_pd_controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class JointControlReferenceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.d3_des = null;
    }
    else {
      if (initObj.hasOwnProperty('d3_des')) {
        this.d3_des = initObj.d3_des
      }
      else {
        this.d3_des = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointControlReferenceRequest
    // Serialize message field [d3_des]
    bufferOffset = _serializer.float64(obj.d3_des, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointControlReferenceRequest
    let len;
    let data = new JointControlReferenceRequest(null);
    // Deserialize message field [d3_des]
    data.d3_des = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_pd_controller/JointControlReferenceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9072e8e10a9d6562da43c2380931af96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 d3_des
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointControlReferenceRequest(null);
    if (msg.d3_des !== undefined) {
      resolved.d3_des = msg.d3_des;
    }
    else {
      resolved.d3_des = 0.0
    }

    return resolved;
    }
};

class JointControlReferenceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointControlReferenceResponse
    // Serialize message field [success]
    bufferOffset = _serializer.float64(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointControlReferenceResponse
    let len;
    let data = new JointControlReferenceResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'scara_pd_controller/JointControlReferenceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4af43e792493e358c51b0904556e73b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointControlReferenceResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: JointControlReferenceRequest,
  Response: JointControlReferenceResponse,
  md5sum() { return '24ecd38e7ff63d6f32f8ba962a5b6ce2'; },
  datatype() { return 'scara_pd_controller/JointControlReference'; }
};
