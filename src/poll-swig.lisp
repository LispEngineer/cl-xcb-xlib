;;; This file was automatically generated by SWIG (http://www.swig.org).
;;; Version 2.0.5
;;;
;;; Do not make changes to this file unless you know what you are doing--modify
;;; the SWIG interface file instead.

(in-package :xcb)



(cl:defconstant #.(custom-lispify "POLLIN" 'constant) #x0001)

(cl:export '#.(custom-lispify "POLLIN" 'constant))

(cl:defconstant #.(custom-lispify "POLLPRI" 'constant) #x0002)

(cl:export '#.(custom-lispify "POLLPRI" 'constant))

(cl:defconstant #.(custom-lispify "POLLOUT" 'constant) #x0004)

(cl:export '#.(custom-lispify "POLLOUT" 'constant))

(cl:defconstant #.(custom-lispify "POLLERR" 'constant) #x0008)

(cl:export '#.(custom-lispify "POLLERR" 'constant))

(cl:defconstant #.(custom-lispify "POLLHUP" 'constant) #x0010)

(cl:export '#.(custom-lispify "POLLHUP" 'constant))

(cl:defconstant #.(custom-lispify "POLLNVAL" 'constant) #x0020)

(cl:export '#.(custom-lispify "POLLNVAL" 'constant))

(cl:defconstant #.(custom-lispify "_SYS_POLL_H" 'constant) 1)

(cl:export '#.(custom-lispify "_SYS_POLL_H" 'constant))

(cffi:defctype #.(custom-lispify "nfds_t" 'typename) :unsigned-long)

(cl:export '#.(custom-lispify "nfds_t" 'typename))


