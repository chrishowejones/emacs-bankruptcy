;; -*- no-byte-compile: t; lexical-binding: nil -*-
(define-package "orgit" "20240808.1945"
  "Support for Org links to Magit buffers."
  '((emacs  "26.1")
    (compat "30.0.0.0")
    (magit  "4.0.0")
    (org    "9.7.8"))
  :url "https://github.com/magit/orgit"
  :commit "59d21fdb21f84238c3172d37fdd2446b753e98dc"
  :revdesc "59d21fdb21f8"
  :keywords '("hypermedia" "vc")
  :authors '(("Jonas Bernoulli" . "emacs.orgit@jonas.bernoulli.dev"))
  :maintainers '(("Jonas Bernoulli" . "emacs.orgit@jonas.bernoulli.dev")))
