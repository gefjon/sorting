(defpackage sorting
  (:use :cl :asdf :iterate)
  (:export :quicksort))

(in-package :sorting)

(defsystem sorting
  :name "sorting"
  :version "0.0.0"
  :author "Arthur Goldman"
  :license "MIT"
  :description "Sorting functions"
  :depends-on (#:iterate)
  :serial t
  :components ((:file "quicksort")))
