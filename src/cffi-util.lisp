(in-package :xcb)

(defmacro make-cstruct-accessors (name)
  (let ((slots (cffi::slots (cffi::parse-type `(:struct ,name)))))
    (flet ((slot-name (slot)
             (concatenate 'string
                          (string name) "-" (string slot))))
      `(progn
         ,@(loop for k being each hash-key in slots
                 as v = (gethash k slots)
                 collecting
                    (let ((offset (foreign-slot-offset name k))
                          (slot-type (cffi::slot-type v))
                          (slot-name (intern (slot-name k))))
                      `(progn
                         (declaim (inline ,slot-name (setf ,slot-name)))
                         (defun ,slot-name (ptr)
                           (mem-ref (inc-pointer ptr ,offset) ',slot-type))
                         (defun (setf ,slot-name) (v ptr)
                           (setf (mem-ref (inc-pointer ptr ,offset) ',slot-type) v))
                         (export ',slot-name))))))))

(export 'make-cstruct-accessors)