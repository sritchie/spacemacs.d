;;; Config Layer -*- lexical-binding: t; -*-

(setq config-packages
      '(;; Unowned Packages
        eshell
        evil
        helm
        ob org org-bullets

        ))

;;; Unowned Packages

;;;; Helm

(defun config/pre-init-helm ()
  ;; overwrite projectile settings
  (spacemacs|use-package-add-hook projectile
    :post-init
    (progn
      (spacemacs/set-leader-keys
        "pi"  'projectile-invalidate-cache
        ))))

;;;; Eshell

(defun config/pre-init-eshell ()
  (spacemacs|use-package-add-hook eshell
    :post-init
    (evil-define-key '(normal insert) 'global (kbd "C-e") 'eshell-pop-eshell)))

;;;; Evil

(defun config/post-init-evil ()
  (setq evil-escape-key-sequence "jk")
  (setq evil-escape-unordered-key-sequence "true")

  (evil-global-set-key 'normal "Q" 'evil-execute-q-macro)
  (evil-define-key '(normal visual motion) 'global
    "H" 'evil-first-non-blank
    "L" 'evil-end-of-line-interactive
    "0" 'evil-jump-item)

  (advice-add 'evil-ex-search-next     :after 'evil-scroll-to-center-advice)
  (advice-add 'evil-ex-search-previous :after 'evil-scroll-to-center-advice))

;;;; Org

(defun config/pre-init-org-bullets ()
  )

(defun config/pre-init-ob ()
  (setq org-confirm-babel-evaluate   nil)
  (setq org-src-fontify-natively     t)
  (setq org-src-tab-acts-natively    t)
  (setq org-src-preserve-indentation t)
  (setq org-src-window-setup         'current-window)

  (spacemacs|use-package-add-hook org
    :post-config (add-to-list 'org-babel-load-languages '(dot . t))))

(defun config/pre-init-org ()
  '(("n" "#+NAME: ?")
    ("L" "#+LaTeX: ")
    ("h" "#+HTML: ")
    ("q" "#+BEGIN_QUOTE\n\n#+END_QUOTE")
    ("s" "#+BEGIN_SRC ?\n\n#+END_SRC")
    ("se" "#+BEGIN_SRC emacs-lisp\n\n#+END_SRC")
    ("sp" "#+BEGIN_SRC python\n\n#+END_SRC"))

  (setq org-structure-template-alist
        '(("a" . "export ascii")
          ("c" . "center")
          ("C" . "comment")
          ("e" . "example")
          ("E" . "export")
          ("h" . "export html")
          ("l" . "export latex")
          ("q" . "quote")
          ("s" . "src")
          ("se" . "src emacs-lisp")
          ("sp" . "src python")
          ("v" . "verse")))

  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (shell . t)
     (R . t)
     (python . t)
     (ruby . t)
     (latex . t)
     (haskell . t)
     (clojure . t)
     (dot . t)
     (scala . t)
     (scheme . t)))

  (add-hook 'org-mode-hook (lambda () (auto-fill-mode 1)))
  )

(defun config/post-init-org ()
  (spacemacs/set-leader-keys-for-major-mode 'org-mode
    "r" 'org-refile
    "h" 'org-metaleft  ; Because of MacOS's damned, indestructable M-h binding...
    "s p" 'org-sort-entries-priorities))
