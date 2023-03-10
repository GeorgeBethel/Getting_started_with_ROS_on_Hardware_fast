;; Auto-generated. Do not edit!


(when (boundp 'led_control::led)
  (if (not (find-package "LED_CONTROL"))
    (make-package "LED_CONTROL"))
  (shadow 'led (find-package "LED_CONTROL")))
(unless (find-package "LED_CONTROL::LED")
  (make-package "LED_CONTROL::LED"))

(in-package "ROS")
;;//! \htmlinclude led.msg.html


(defclass led_control::led
  :super ros::object
  :slots (_ledState ))

(defmethod led_control::led
  (:init
   (&key
    ((:ledState __ledState) nil)
    )
   (send-super :init)
   (setq _ledState __ledState)
   self)
  (:ledState
   (&optional __ledState)
   (if __ledState (setq _ledState __ledState)) _ledState)
  (:serialization-length
   ()
   (+
    ;; bool _ledState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ledState
       (if _ledState (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ledState
     (setq _ledState (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get led_control::led :md5sum-) "781db327ac3ac8924f798b25d3f9bd79")
(setf (get led_control::led :datatype-) "led_control/led")
(setf (get led_control::led :definition-)
      "bool ledState #string to hold the desired LED state

")



(provide :led_control/led "781db327ac3ac8924f798b25d3f9bd79")


