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
    ((:ledState __ledState) "")
    )
   (send-super :init)
   (setq _ledState (string __ledState))
   self)
  (:ledState
   (&optional __ledState)
   (if __ledState (setq _ledState __ledState)) _ledState)
  (:serialization-length
   ()
   (+
    ;; string _ledState
    4 (length _ledState)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ledState
       (write-long (length _ledState) s) (princ _ledState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ledState
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ledState (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get led_control::led :md5sum-) "2e72d8d4579cf7ba2c7a9cea0cf0c7ab")
(setf (get led_control::led :datatype-) "led_control/led")
(setf (get led_control::led :definition-)
      "string ledState #string to hold the desired LED state

")



(provide :led_control/led "2e72d8d4579cf7ba2c7a9cea0cf0c7ab")


