; Auto-generated. Do not edit!


(cl:in-package delivery_topics-srv)


;//! \htmlinclude MenuSelector-request.msg.html

(cl:defclass <MenuSelector-request> (roslisp-msg-protocol:ros-message)
  ((restaurant
    :reader restaurant
    :initarg :restaurant
    :type cl:fixnum
    :initform 0)
   (count
    :reader count
    :initarg :count
    :type cl:fixnum
    :initform 0)
   (destone
    :reader destone
    :initarg :destone
    :type cl:fixnum
    :initform 0)
   (desttwo
    :reader desttwo
    :initarg :desttwo
    :type cl:fixnum
    :initform 0)
   (menu
    :reader menu
    :initarg :menu
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MenuSelector-request (<MenuSelector-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MenuSelector-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MenuSelector-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name delivery_topics-srv:<MenuSelector-request> is deprecated: use delivery_topics-srv:MenuSelector-request instead.")))

(cl:ensure-generic-function 'restaurant-val :lambda-list '(m))
(cl:defmethod restaurant-val ((m <MenuSelector-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delivery_topics-srv:restaurant-val is deprecated.  Use delivery_topics-srv:restaurant instead.")
  (restaurant m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <MenuSelector-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delivery_topics-srv:count-val is deprecated.  Use delivery_topics-srv:count instead.")
  (count m))

(cl:ensure-generic-function 'destone-val :lambda-list '(m))
(cl:defmethod destone-val ((m <MenuSelector-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delivery_topics-srv:destone-val is deprecated.  Use delivery_topics-srv:destone instead.")
  (destone m))

(cl:ensure-generic-function 'desttwo-val :lambda-list '(m))
(cl:defmethod desttwo-val ((m <MenuSelector-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delivery_topics-srv:desttwo-val is deprecated.  Use delivery_topics-srv:desttwo instead.")
  (desttwo m))

(cl:ensure-generic-function 'menu-val :lambda-list '(m))
(cl:defmethod menu-val ((m <MenuSelector-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delivery_topics-srv:menu-val is deprecated.  Use delivery_topics-srv:menu instead.")
  (menu m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MenuSelector-request>) ostream)
  "Serializes a message object of type '<MenuSelector-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'restaurant)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destone)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'desttwo)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'menu)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MenuSelector-request>) istream)
  "Deserializes a message object of type '<MenuSelector-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'restaurant)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'destone)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'desttwo)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'menu)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MenuSelector-request>)))
  "Returns string type for a service object of type '<MenuSelector-request>"
  "delivery_topics/MenuSelectorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MenuSelector-request)))
  "Returns string type for a service object of type 'MenuSelector-request"
  "delivery_topics/MenuSelectorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MenuSelector-request>)))
  "Returns md5sum for a message object of type '<MenuSelector-request>"
  "cb513c0a49de7b970fe6ef39337a3991")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MenuSelector-request)))
  "Returns md5sum for a message object of type 'MenuSelector-request"
  "cb513c0a49de7b970fe6ef39337a3991")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MenuSelector-request>)))
  "Returns full string definition for message of type '<MenuSelector-request>"
  (cl:format cl:nil "uint8 restaurant~%uint8 count~%uint8 destone~%uint8 desttwo~%uint8 menu~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MenuSelector-request)))
  "Returns full string definition for message of type 'MenuSelector-request"
  (cl:format cl:nil "uint8 restaurant~%uint8 count~%uint8 destone~%uint8 desttwo~%uint8 menu~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MenuSelector-request>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MenuSelector-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MenuSelector-request
    (cl:cons ':restaurant (restaurant msg))
    (cl:cons ':count (count msg))
    (cl:cons ':destone (destone msg))
    (cl:cons ':desttwo (desttwo msg))
    (cl:cons ':menu (menu msg))
))
;//! \htmlinclude MenuSelector-response.msg.html

(cl:defclass <MenuSelector-response> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass MenuSelector-response (<MenuSelector-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MenuSelector-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MenuSelector-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name delivery_topics-srv:<MenuSelector-response> is deprecated: use delivery_topics-srv:MenuSelector-response instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <MenuSelector-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader delivery_topics-srv:message-val is deprecated.  Use delivery_topics-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MenuSelector-response>) ostream)
  "Serializes a message object of type '<MenuSelector-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MenuSelector-response>) istream)
  "Deserializes a message object of type '<MenuSelector-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MenuSelector-response>)))
  "Returns string type for a service object of type '<MenuSelector-response>"
  "delivery_topics/MenuSelectorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MenuSelector-response)))
  "Returns string type for a service object of type 'MenuSelector-response"
  "delivery_topics/MenuSelectorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MenuSelector-response>)))
  "Returns md5sum for a message object of type '<MenuSelector-response>"
  "cb513c0a49de7b970fe6ef39337a3991")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MenuSelector-response)))
  "Returns md5sum for a message object of type 'MenuSelector-response"
  "cb513c0a49de7b970fe6ef39337a3991")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MenuSelector-response>)))
  "Returns full string definition for message of type '<MenuSelector-response>"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MenuSelector-response)))
  "Returns full string definition for message of type 'MenuSelector-response"
  (cl:format cl:nil "string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MenuSelector-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MenuSelector-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MenuSelector-response
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MenuSelector)))
  'MenuSelector-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MenuSelector)))
  'MenuSelector-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MenuSelector)))
  "Returns string type for a service object of type '<MenuSelector>"
  "delivery_topics/MenuSelector")