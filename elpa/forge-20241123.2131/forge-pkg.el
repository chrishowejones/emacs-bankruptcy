;; -*- no-byte-compile: t; lexical-binding: nil -*-
(define-package "forge" "20241123.2131"
  "Access Git forges from Magit."
  '((emacs         "27.1")
    (compat        "30.0.0.0")
    (closql        "2.0.0")
    (dash          "2.19.1")
    (emacsql       "4.0.3")
    (ghub          "4.1.1")
    (let-alist     "1.0.6")
    (magit         "4.1.1")
    (markdown-mode "2.6")
    (seq           "2.24")
    (transient     "0.7.6")
    (yaml          "0.5.5"))
  :url "https://github.com/magit/forge"
  :commit "079d2d62b6c8590e7d165df7dc1517f7a3fca82c"
  :revdesc "079d2d62b6c8"
  :keywords '("git" "tools" "vc")
  :authors '(("Jonas Bernoulli" . "emacs.forge@jonas.bernoulli.dev"))
  :maintainers '(("Jonas Bernoulli" . "emacs.forge@jonas.bernoulli.dev")))
