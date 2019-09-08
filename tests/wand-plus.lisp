(defpackage wand+-test
  (:use :cl
        :wand+
        :parachute))
(in-package :wand+-test)

;; NOTE: To run this test file, execute `(asdf:test-system :wand-plus)' in your Lisp.

(define-test dummy
  (false nil)
  (true t))

