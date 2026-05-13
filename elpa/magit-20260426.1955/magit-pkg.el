;; -*- no-byte-compile: t; lexical-binding: nil -*-
(define-package "magit" "20260426.1955"
  "A Git porcelain inside Emacs."
  '((emacs         "28.1")
    (compat        "30.1")
    (cond-let      "0.2")
    (llama         "1.0")
    (magit-section "4.5")
    (seq           "2.24")
    (transient     "0.13")
    (with-editor   "3.4"))
  :url "https://github.com/magit/magit"
  :commit "db224f2ef066e1b0a4b08e8afa0cd40d6d96a27b"
  :revdesc "db224f2ef066"
  :keywords '("git" "tools" "vc")
  :authors '(("Marius Vollmer" . "marius.vollmer@gmail.com")
             ("Jonas Bernoulli" . "emacs.magit@jonas.bernoulli.dev"))
  :maintainers '(("Jonas Bernoulli" . "emacs.magit@jonas.bernoulli.dev")
                 ("Kyle Meyer" . "kyle@kyleam.com")))
