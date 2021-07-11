;; Auto-generated. Do not edit!


(when (boundp 'scara_pd_controller::JointControlReference)
  (if (not (find-package "SCARA_PD_CONTROLLER"))
    (make-package "SCARA_PD_CONTROLLER"))
  (shadow 'JointControlReference (find-package "SCARA_PD_CONTROLLER")))
(unless (find-package "SCARA_PD_CONTROLLER::JOINTCONTROLREFERENCE")
  (make-package "SCARA_PD_CONTROLLER::JOINTCONTROLREFERENCE"))
(unless (find-package "SCARA_PD_CONTROLLER::JOINTCONTROLREFERENCEREQUEST")
  (make-package "SCARA_PD_CONTROLLER::JOINTCONTROLREFERENCEREQUEST"))
(unless (find-package "SCARA_PD_CONTROLLER::JOINTCONTROLREFERENCERESPONSE")
  (make-package "SCARA_PD_CONTROLLER::JOINTCONTROLREFERENCERESPONSE"))

(in-package "ROS")





(defclass scara_pd_controller::JointControlReferenceRequest
  :super ros::object
  :slots (_d3_des ))

(defmethod scara_pd_controller::JointControlReferenceRequest
  (:init
   (&key
    ((:d3_des __d3_des) 0.0)
    )
   (send-super :init)
   (setq _d3_des (float __d3_des))
   self)
  (:d3_des
   (&optional __d3_des)
   (if __d3_des (setq _d3_des __d3_des)) _d3_des)
  (:serialization-length
   ()
   (+
    ;; float64 _d3_des
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _d3_des
       (sys::poke _d3_des (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _d3_des
     (setq _d3_des (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scara_pd_controller::JointControlReferenceResponse
  :super ros::object
  :slots (_f_d3 ))

(defmethod scara_pd_controller::JointControlReferenceResponse
  (:init
   (&key
    ((:f_d3 __f_d3) 0.0)
    )
   (send-super :init)
   (setq _f_d3 (float __f_d3))
   self)
  (:f_d3
   (&optional __f_d3)
   (if __f_d3 (setq _f_d3 __f_d3)) _f_d3)
  (:serialization-length
   ()
   (+
    ;; float64 _f_d3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _f_d3
       (sys::poke _f_d3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _f_d3
     (setq _f_d3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scara_pd_controller::JointControlReference
  :super ros::object
  :slots ())

(setf (get scara_pd_controller::JointControlReference :md5sum-) "deb289886d655a183ad8c240ad109d63")
(setf (get scara_pd_controller::JointControlReference :datatype-) "scara_pd_controller/JointControlReference")
(setf (get scara_pd_controller::JointControlReference :request) scara_pd_controller::JointControlReferenceRequest)
(setf (get scara_pd_controller::JointControlReference :response) scara_pd_controller::JointControlReferenceResponse)

(defmethod scara_pd_controller::JointControlReferenceRequest
  (:response () (instance scara_pd_controller::JointControlReferenceResponse :init)))

(setf (get scara_pd_controller::JointControlReferenceRequest :md5sum-) "deb289886d655a183ad8c240ad109d63")
(setf (get scara_pd_controller::JointControlReferenceRequest :datatype-) "scara_pd_controller/JointControlReferenceRequest")
(setf (get scara_pd_controller::JointControlReferenceRequest :definition-)
      "float64 d3_des
---
float64 f_d3

")

(setf (get scara_pd_controller::JointControlReferenceResponse :md5sum-) "deb289886d655a183ad8c240ad109d63")
(setf (get scara_pd_controller::JointControlReferenceResponse :datatype-) "scara_pd_controller/JointControlReferenceResponse")
(setf (get scara_pd_controller::JointControlReferenceResponse :definition-)
      "float64 d3_des
---
float64 f_d3

")



(provide :scara_pd_controller/JointControlReference "deb289886d655a183ad8c240ad109d63")


