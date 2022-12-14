;; Auto-generated. Do not edit!


(when (boundp 'delivery_topics::MenuSelector)
  (if (not (find-package "DELIVERY_TOPICS"))
    (make-package "DELIVERY_TOPICS"))
  (shadow 'MenuSelector (find-package "DELIVERY_TOPICS")))
(unless (find-package "DELIVERY_TOPICS::MENUSELECTOR")
  (make-package "DELIVERY_TOPICS::MENUSELECTOR"))
(unless (find-package "DELIVERY_TOPICS::MENUSELECTORREQUEST")
  (make-package "DELIVERY_TOPICS::MENUSELECTORREQUEST"))
(unless (find-package "DELIVERY_TOPICS::MENUSELECTORRESPONSE")
  (make-package "DELIVERY_TOPICS::MENUSELECTORRESPONSE"))

(in-package "ROS")





(defclass delivery_topics::MenuSelectorRequest
  :super ros::object
  :slots (_restaurant _count _destone _desttwo _menu ))

(defmethod delivery_topics::MenuSelectorRequest
  (:init
   (&key
    ((:restaurant __restaurant) 0)
    ((:count __count) 0)
    ((:destone __destone) 0)
    ((:desttwo __desttwo) 0)
    ((:menu __menu) 0)
    )
   (send-super :init)
   (setq _restaurant (round __restaurant))
   (setq _count (round __count))
   (setq _destone (round __destone))
   (setq _desttwo (round __desttwo))
   (setq _menu (round __menu))
   self)
  (:restaurant
   (&optional __restaurant)
   (if __restaurant (setq _restaurant __restaurant)) _restaurant)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:destone
   (&optional __destone)
   (if __destone (setq _destone __destone)) _destone)
  (:desttwo
   (&optional __desttwo)
   (if __desttwo (setq _desttwo __desttwo)) _desttwo)
  (:menu
   (&optional __menu)
   (if __menu (setq _menu __menu)) _menu)
  (:serialization-length
   ()
   (+
    ;; uint8 _restaurant
    1
    ;; uint8 _count
    1
    ;; uint8 _destone
    1
    ;; uint8 _desttwo
    1
    ;; uint8 _menu
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _restaurant
       (write-byte _restaurant s)
     ;; uint8 _count
       (write-byte _count s)
     ;; uint8 _destone
       (write-byte _destone s)
     ;; uint8 _desttwo
       (write-byte _desttwo s)
     ;; uint8 _menu
       (write-byte _menu s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _restaurant
     (setq _restaurant (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _destone
     (setq _destone (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _desttwo
     (setq _desttwo (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _menu
     (setq _menu (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass delivery_topics::MenuSelectorResponse
  :super ros::object
  :slots (_message ))

(defmethod delivery_topics::MenuSelectorResponse
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass delivery_topics::MenuSelector
  :super ros::object
  :slots ())

(setf (get delivery_topics::MenuSelector :md5sum-) "cb513c0a49de7b970fe6ef39337a3991")
(setf (get delivery_topics::MenuSelector :datatype-) "delivery_topics/MenuSelector")
(setf (get delivery_topics::MenuSelector :request) delivery_topics::MenuSelectorRequest)
(setf (get delivery_topics::MenuSelector :response) delivery_topics::MenuSelectorResponse)

(defmethod delivery_topics::MenuSelectorRequest
  (:response () (instance delivery_topics::MenuSelectorResponse :init)))

(setf (get delivery_topics::MenuSelectorRequest :md5sum-) "cb513c0a49de7b970fe6ef39337a3991")
(setf (get delivery_topics::MenuSelectorRequest :datatype-) "delivery_topics/MenuSelectorRequest")
(setf (get delivery_topics::MenuSelectorRequest :definition-)
      "uint8 restaurant
uint8 count
uint8 destone
uint8 desttwo
uint8 menu
---
string message

")

(setf (get delivery_topics::MenuSelectorResponse :md5sum-) "cb513c0a49de7b970fe6ef39337a3991")
(setf (get delivery_topics::MenuSelectorResponse :datatype-) "delivery_topics/MenuSelectorResponse")
(setf (get delivery_topics::MenuSelectorResponse :definition-)
      "uint8 restaurant
uint8 count
uint8 destone
uint8 desttwo
uint8 menu
---
string message

")



(provide :delivery_topics/MenuSelector "cb513c0a49de7b970fe6ef39337a3991")


