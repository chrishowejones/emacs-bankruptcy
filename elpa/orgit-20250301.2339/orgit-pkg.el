;; -*- no-byte-compile: t; lexical-binding: nil -*-
(define-package "orgit" "20250301.2339"
  "Support for Org links to Magit buffers."
  '((emacs  "26.1")
    (compat "30.0.2.0")
    (magit  "4.3.1")
    (org    "9.7.11"))
  :url "https://github.com/magit/orgit"
  :commit "6ad0dc35c8df54fae4ef27e5145760e22fbbf890"
  :revdesc "6ad0dc35c8df"
  :keywords '("hypermedia" "vc")
  :authors '(("Jonas Bernoulli" . "emacs.orgit@jonas.bernoulli.dev"))
  :maintainers '(("Jonas Bernoulli" . "emacs.orgit@jonas.bernoulli.dev")))
