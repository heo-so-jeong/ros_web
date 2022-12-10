
(cl:in-package :asdf)

(defsystem "delivery_topics-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MenuSelector" :depends-on ("_package_MenuSelector"))
    (:file "_package_MenuSelector" :depends-on ("_package"))
  ))