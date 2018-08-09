
(cl:in-package :asdf)

(defsystem "forklift-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "plcInfo" :depends-on ("_package_plcInfo"))
    (:file "_package_plcInfo" :depends-on ("_package"))
    (:file "cameraInfo" :depends-on ("_package_cameraInfo"))
    (:file "_package_cameraInfo" :depends-on ("_package"))
    (:file "vehicleControl" :depends-on ("_package_vehicleControl"))
    (:file "_package_vehicleControl" :depends-on ("_package"))
  ))