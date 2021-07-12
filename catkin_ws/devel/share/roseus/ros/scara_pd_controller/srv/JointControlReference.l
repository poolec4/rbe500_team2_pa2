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
  :slots (_success ))

(defmethod scara_pd_controller::JointControlReferenceResponse
  (:init
   (&key
    ((:success __success) 0.0)
    )
   (send-super :init)
   (setq _success (float __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _success
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _success
       (sys::poke _success (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _success
     (setq _success (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scara_pd_controller::JointControlReference
  :super ros::object
  :slots ())

(setf (get scara_pd_controller::JointControlReference :md5sum-) "24ecd38e7ff63d6f32f8ba962a5b6ce2")
(setf (get scara_pd_controller::JointControlReference :datatype-) "scara_pd_controller/JointControlReference")
(setf (get scara_pd_controller::JointControlReference :request) scara_pd_controller::JointControlReferenceRequest)
(setf (get scara_pd_controller::JointControlReference :response) scara_pd_controller::JointControlReferenceResponse)

(defmethod scara_pd_controller::JointControlReferenceRequest
  (:response () (instance scara_pd_controller::JointControlReferenceResponse :init)))

(setf (get scara_pd_controller::JointControlReferenceRequest :md5sum-) "24ecd38e7ff63d6f32f8ba962a5b6ce2")
(setf (get scara_pd_controller::JointControlReferenceRequest :datatype-) "scara_pd_controller/JointControlReferenceRequest")
(setf (get scara_pd_controller::JointControlReferenceRequest :definition-)
      "float64 d3_des
---
float64 success

")

(setf (get scara_pd_controller::JointControlReferenceResponse :md5sum-) "24ecd38e7ff63d6f32f8ba962a5b6ce2")
(setf (get scara_pd_controller::JointControlReferenceResponse :datatype-) "scara_pd_controller/JointControlReferenceResponse")
(setf (get scara_pd_controller::JointControlReferenceResponse :definition-)
      "float64 d3_des
---
float64 success

")



(provide :scara_pd_controller/JointControlReference "24ecd38e7ff63d6f32f8ba962a5b6ce2")


