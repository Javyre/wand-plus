(defsystem "wand-plus"
  :version "0.1.0"
  :author "Javier A. Pollak"
  :license "GPL2"
  :depends-on (alexandria let-plus trivia)
  :components ((:module "src"
                :components
                ((:file "wand-plus"))))
  :description "An implementation of the extended wand algorithm for HM type inference"
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.md"))
  :in-order-to ((test-op (test-op "wand-plus/test"))))

(defsystem "wand-plus/test"
  :author "Javier A. Pollak"
  :license "GPL2"
  :depends-on (wand-plus parachute)
  :components ((:module "tests"
                :components
                ((:file "wand-plus"))))
  :description "Test system for wand-plus"
  :perform (asdf:test-op (op c) (uiop:symbol-call :parachute :test :wand+-test)))
