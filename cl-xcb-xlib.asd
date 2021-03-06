(defsystem :cl-xcb-xlib
  :description "Common Lisp wrapper for XCB and Xlib/XCB"
  :author "Ryan Pavlik"
  :license "NewBSD, LLGPL"

  :depends-on (:cffi :cffi-libffi :bordeaux-threads :trivial-garbage
               :static-vectors)

  :pathname "src"
  :serial t

  :components
  ((:module "xcb.swig"
    :pathname "swig"
    :components
    ((:static-file "Makefile")
     (:static-file "xcb-swig.i")
     (:static-file "xlib-swig.i")))

   (:file "package")
   (:file "load-basic-libraries")
   (:file "load-ext-libraries")
   (:file "swig-util")
   (:file "swig-helpers")
   (:file "xcb-swig")
   (:file "xlib-swig")
   (:file "poll-swig")
   (:file "cffi-util")
   (:file "xcb-wrappers")
   (:file "xlib-wrappers")

   (:module "xcb.clx"
    :pathname "clx"
    :serial t
    :components
    ((:file "package")
     (:file "util")
     (:file "types")
     (:file "errors")
     (:file "display")
     (:file "screen")
     (:file "drawable")
     (:file "window")
     (:file "pixmap")
     (:file "gcontext")
     (:file "graphicops")
     (:file "image")
     (:file "font")
     (:file "color")
     (:file "colormap")
     (:file "cursor")
     (:file "atom")
     (:file "events")
     (:file "event-decl")
     (:file "resources")
     (:file "control")
     (:file "keysymdefs")
     (:file "icccm")
     (:file "undocumented")
     (:file "ext")

     (:module "xcb.ext"
      :pathname "ext"
      :serial t
      :components
      ((:file "glx")))))))
