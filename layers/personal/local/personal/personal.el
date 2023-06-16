;;; personal.el --- The random config dumping ground -*- lexical-binding: t; -*-

(provide 'personal)

;; Better indication of where I am.
(setq frame-title-format '(buffer-file-name "%f" ("%b")))

(defalias 'yes-or-no-p 'y-or-n-p)

;; Seed the random-number generator
(random t)

;; Search EVERYTHING when we use ag.
(setq helm-ag-command-option "--all-text")

;; Rather than saving backup files scattered all over the file system, let them
;; live in the =backups/= directory inside of the starter kit.
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat dotspacemacs-directory "backups")))))

;;; Misc Config
(setq projectile-enable-caching t)

;; Configure registers.
(dolist
    (r `((?i (file . ,(concat dotspacemacs-directory "init.el")))
         (?I (file . ,(let* ((user user-login-name)
                             (org (expand-file-name (concat user ".org") dotspacemacs-directory))
                             (el  (expand-file-name (concat user ".el") dotspacemacs-directory))
                             (dir (expand-file-name user dotspacemacs-directory)))
                        (cond
                         ((file-exists-p org) org)
                         ((file-exists-p el)  el)
                         (t dir)))))
         (?s (file . ,(concat dotspacemacs-directory "starter-kit.org")))
         (?b (file . ,(concat (getenv "HOME") "/.bashrc")))
         (?r (file . ,(concat dotspacemacs-directory "layers/personal/local/personal/personal.el")))
         (?o (file . ,org-default-notes-file))
         (?t (file . ,org-tasks-file))
         ))
  (set-register (car r) (cadr r)))

(show-paren-mode 1)

(add-hook 'markdown-mode-hook #'(lambda () (auto-fill-mode 0)))
(add-hook 'text-mode-hook #'(lambda () (auto-fill-mode 0)))
(add-hook 'html-mode-hook #'(lambda () (auto-fill-mode 0)))
(add-hook 'org-mode-hook #'(lambda () (auto-fill-mode 0)))

(set-default 'imenu-auto-rescan t)

;; random auto-mode-alist additions.
(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))
(add-to-list 'auto-mode-alist '("COMMIT_EDITMSG$" . diff-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
