// Auto-generated. Do not edit!

// (in-package delivery_topics.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MenuSelectorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.restaurant = null;
      this.count = null;
      this.destone = null;
      this.desttwo = null;
      this.menu = null;
    }
    else {
      if (initObj.hasOwnProperty('restaurant')) {
        this.restaurant = initObj.restaurant
      }
      else {
        this.restaurant = 0;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('destone')) {
        this.destone = initObj.destone
      }
      else {
        this.destone = 0;
      }
      if (initObj.hasOwnProperty('desttwo')) {
        this.desttwo = initObj.desttwo
      }
      else {
        this.desttwo = 0;
      }
      if (initObj.hasOwnProperty('menu')) {
        this.menu = initObj.menu
      }
      else {
        this.menu = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MenuSelectorRequest
    // Serialize message field [restaurant]
    bufferOffset = _serializer.uint8(obj.restaurant, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint8(obj.count, buffer, bufferOffset);
    // Serialize message field [destone]
    bufferOffset = _serializer.uint8(obj.destone, buffer, bufferOffset);
    // Serialize message field [desttwo]
    bufferOffset = _serializer.uint8(obj.desttwo, buffer, bufferOffset);
    // Serialize message field [menu]
    bufferOffset = _serializer.uint8(obj.menu, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MenuSelectorRequest
    let len;
    let data = new MenuSelectorRequest(null);
    // Deserialize message field [restaurant]
    data.restaurant = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [destone]
    data.destone = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [desttwo]
    data.desttwo = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [menu]
    data.menu = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'delivery_topics/MenuSelectorRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '47feed0f3d26f1f184a3f52f26d915bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 restaurant
    uint8 count
    uint8 destone
    uint8 desttwo
    uint8 menu
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MenuSelectorRequest(null);
    if (msg.restaurant !== undefined) {
      resolved.restaurant = msg.restaurant;
    }
    else {
      resolved.restaurant = 0
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.destone !== undefined) {
      resolved.destone = msg.destone;
    }
    else {
      resolved.destone = 0
    }

    if (msg.desttwo !== undefined) {
      resolved.desttwo = msg.desttwo;
    }
    else {
      resolved.desttwo = 0
    }

    if (msg.menu !== undefined) {
      resolved.menu = msg.menu;
    }
    else {
      resolved.menu = 0
    }

    return resolved;
    }
};

class MenuSelectorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MenuSelectorResponse
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MenuSelectorResponse
    let len;
    let data = new MenuSelectorResponse(null);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.message.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'delivery_topics/MenuSelectorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f003d6bcc824cbd51361d66d8e4f76c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MenuSelectorResponse(null);
    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: MenuSelectorRequest,
  Response: MenuSelectorResponse,
  md5sum() { return 'cb513c0a49de7b970fe6ef39337a3991'; },
  datatype() { return 'delivery_topics/MenuSelector'; }
};
