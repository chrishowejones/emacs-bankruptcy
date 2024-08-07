;;; flycheck-clojure-autoloads.el --- automatically extracted autoloads (do not edit)   -*- lexical-binding: t -*-
;; Generated by the `loaddefs-generate' function.

;; This file is part of GNU Emacs.

;;; Code:

(add-to-list 'load-path (or (and load-file-name (directory-file-name (file-name-directory load-file-name))) (car load-path)))



;;; Generated autoloads from flycheck-clojure.el

(autoload 'flycheck-clojure-parse-cider-errors "flycheck-clojure" "\
Parse cider errors from JSON VALUE from CHECKER.

Return a list of parsed `flycheck-error' objects.

(fn VALUE CHECKER)")
(autoload 'flycheck-clojure-setup "flycheck-clojure" "\
Setup Flycheck for Clojure." t)
(register-definition-prefixes "flycheck-clojure" '("cider-flycheck-eval" "flycheck-clojure-"))

;;; End of scraped data

(provide 'flycheck-clojure-autoloads)

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; no-native-compile: t
;; coding: utf-8-emacs-unix
;; End:

;;; flycheck-clojure-autoloads.el ends here
