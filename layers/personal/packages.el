;;; Personal Layer -*- lexical-binding: t; -*-

(setq personal-packages
      '(
        (personal :location local)
        ))

;;; Personal

(defun personal/init-personal ()
  (use-package personal
    :if sam?))
