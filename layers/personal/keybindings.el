;;; Personal Layer Keybindings. -*- lexical-binding: t; -*-
;;
;; This is just stuff that I've grown to like over the years.

(global-set-key (kbd "C-c q") 'join-line)

;; I like these better, for killing
(global-set-key (kbd "s-<backspace>") 'backward-kill-word)
(global-set-key (kbd "C-w") 'backward-kill-word)


;; Can this still even work?
(global-set-key (kbd "C-c m") 'copy-code-as-rtf)

;; Start emacs server
(call-interactively 'server-start)

;; Visual line mode
(global-visual-line-mode t)

;; Align in a pretty way (used??)
(global-set-key (kbd "C-x \\") 'align-regexp)

;; org-publish
(global-set-key (kbd "C-c x") 'org-publish)

;; hippie-expand... am I using this??
(global-set-key (kbd "M-/") 'hippie-expand)

;; Font size changes
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; regex for search, not the normal thing
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "\C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)

;; potential file finding code
(global-set-key (kbd "C-x M-f") 'ido-find-file-other-window)
(global-set-key (kbd "C-x C-p") 'find-file-at-point)
(global-set-key (kbd "C-c y") 'bury-buffer)
(global-set-key (kbd "C-c r") 'revert-buffer)
(global-set-key (kbd "M-`") 'file-cache-minibuffer-complete)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "C-x f") 'recentf-ido-find-file)

;; bullshit with window switching
(windmove-default-keybindings) ;; Shift+direction
(global-set-key (kbd "C-x O") (lambda () (interactive) (other-window -1))) ;; back one
(global-set-key (kbd "C-x C-o") (lambda () (interactive) (other-window 2))) ;; forward two

;; help should search for more than just commands
(global-set-key (kbd "C-h a") 'apropos)

;; helm... I think this is already covered?
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-c f") 'helm-projectile)


;; eshell. I need to start using this.
;; Start eshell or switch to it if it's active.
(global-set-key (kbd "C-x m") 'eshell)

;; Start a new eshell even if one is active.
(global-set-key (kbd "C-x M") (lambda () (interactive) (eshell t)))

;; Start a regular shell if you prefer that.
(global-set-key (kbd "C-x M-m") 'shell)

;; browse kill ring.
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

;; bindings to allow for special backward-kill-word. THIS I love.
(global-set-key [remap kill-word] 'defunkt-kill-word)
(global-set-key [remap backward-kill-word] 'defunkt-backward-kill-word)

;; Duplicate line?
(global-set-key [C-return] 'defunkt-duplicate-line)

;; Should be able to eval-and-replace anywhere.
(global-set-key (kbd "C-c e") 'eval-and-replace)

;; For debugging Emacs modes
(global-set-key (kbd "C-c p") 'message-point)

;; So good!
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-c q") 'join-line)
