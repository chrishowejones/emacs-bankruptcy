;;; request-deferred.el --- Wrap request.el by deferred -*- lexical-binding: t; -*-

;; Copyright (C) 2012 Takafumi Arakaki

;; Author: Takafumi Arakaki <aka.tkf at gmail.com>
;; URL: https://github.com/tkf/emacs-request
;; Package-Requires: ((emacs "24.1") (deferred "0.3.1") (request "0.3"))
;; Package-Version: 20220614.1604
;; Package-Revision: 38ed1d2e6413

;; This file is NOT part of GNU Emacs.

;; request-deferred.el is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; request-deferred.el is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with request-deferred.el.
;; If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Trivial wrapper to request library returing kiwanami deferred object.

;;; Code:

(require 'request)
(require 'deferred)

(defun request-deferred (url &rest args)
  "Return deferred object associated requesting URL with ARGS.

Following deferred callback takes a response object regardless of
the response result.  To make sure no error occurs during the
request, check `request-response-error-thrown'.

Arguments are the same as `request', but COMPLETE callback cannot
be used as it is used for starting deferred callback chain.

Example::

  (require \\='request-deferred)

  (deferred:$
    (request-deferred \"https://httpbin.org/get\" :parser \\='json-read)
    (deferred:nextc it
      (lambda (response)
        (message \"Got: %S\" (request-response-data response)))))"
  (let* ((d (deferred:new #'identity))
         (callback-post (apply-partially
                         (lambda (d &rest args)
                           (deferred:callback-post
                             d (plist-get args :response)))
                         d)))
    ;; As `deferred:errorback-post' requires an error object to be
    ;; posted, use `deferred:callback-post' for success and error
    ;; cases.
    (setq args (plist-put args :complete callback-post))
    (apply #'request url args)
    d))

(provide 'request-deferred)

;;; request-deferred.el ends here
