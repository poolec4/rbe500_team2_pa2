
(cl:in-package :asdf)

(defsystem "scara_pd_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointControlReference" :depends-on ("_package_JointControlReference"))
    (:file "_package_JointControlReference" :depends-on ("_package"))
  ))