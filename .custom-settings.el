(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#d2ceda" "#f2241f" "#67b11d" "#b1951d" "#3a81c3" "#a31db1" "#21b8c7" "#655370"])
 '(cider-print-fn 'pr)
 '(cider-repl-use-content-types t)
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   '("e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" "d0fa4334234e97ece3d72d86e39a574f8256b4a8699a1fb5390c402892a1c024" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default))
 '(evil-want-Y-yank-to-eol nil)
 '(fci-rule-color "#383838")
 '(geiser-mit-binary "/Users/sritchie/bin/mechanics-osx")
 '(helm-completion-style 'emacs)
 '(hl-todo-keyword-faces
   '(("TODO" . "#dc752f")
     ("NEXT" . "#dc752f")
     ("THEM" . "#2d9574")
     ("PROG" . "#3a81c3")
     ("OKAY" . "#3a81c3")
     ("DONT" . "#f2241f")
     ("FAIL" . "#f2241f")
     ("DONE" . "#42ae2c")
     ("NOTE" . "#b1951d")
     ("KLUDGE" . "#b1951d")
     ("HACK" . "#b1951d")
     ("TEMP" . "#b1951d")
     ("FIXME" . "#dc752f")
     ("XXX+" . "#dc752f")
     ("\\?\\?\\?+" . "#dc752f")))
 '(js-indent-level 2)
 '(json-reformat:indent-width 2)
 '(lsp-metals-scalafmt-config-path ".scalafmt.conf")
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(org-export-preserve-breaks nil)
 '(org-format-latex-options
   '(:foreground default :background default :scale 1.5 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\[")))
 '(org-journal-date-format "%A, %m/%d/%Y")
 '(org-journal-dir "/Volumes/GoogleDrive/My Drive/org/journal/" t)
 '(org-journal-file-type 'weekly)
 '(org-latex-default-packages-alist
   '(("AUTO" "inputenc" t
      ("pdflatex"))
     ("T1" "fontenc" t
      ("pdflatex"))
     ("" "graphicx" t nil)
     ("" "grffile" t nil)
     ("" "longtable" nil nil)
     ("" "wrapfig" nil nil)
     ("" "rotating" nil nil)
     ("normalem" "ulem" t nil)
     ("" "amsmath" t nil)
     ("" "textcomp" t nil)
     ("" "amssymb" t nil)
     ("" "capt-of" nil nil)
     ("" "hyperref" nil nil)))
 '(package-selected-packages
   '(cfrs seq tern gntp hierarchy epc ctable concurrent deferred parent-mode window-purpose imenu-list haml-mode gitignore-mode fringe-helper git-gutter+ shrink-path json-snatcher json-reformat posframe lcr web-completion-data ghc sesman spinner queue parseclj a packed pkg-info epl s auto-complete popup goto-chg bind-map adoc-mode markup-faces edit-indirect nand2tetris tide typescript-mode import-js grizzl add-node-modules-path company-reftex company-auctex auctex-latexmk auctex toml-mode racer helm-gtags ggtags flycheck-rust counsel-gtags counsel swiper ivy cargo rust-mode pcache visual-fill-column htmlize git-gutter package-lint anzu bui treemacs pfuture parseedn clojure-mode flycheck anaconda-mode pythonic ace-window avy eval-sexp-fu lsp-mode markdown-mode ht dash-functional sbt-mode scala-mode paredit iedit smartparens haskell-mode company flx request helm helm-core yasnippet multiple-cursors skewer-mode js2-mode simple-httpd magit-popup magit git-commit with-editor transient alert log4e org-category-capture projectile pyvenv f spaceline powerline all-the-icons memoize dash bind-key async evil undo-tree hydra lv org-plus-contrib ox-gfm ox-hugo geiser racket-mode pos-tip faceup systemd dockerfile-mode docker tablist docker-tramp zenburn-theme yasnippet-snippets yapfify yaml-mode xterm-color ws-butler writeroom-mode winum which-key web-mode web-beautify vterm volatile-highlights vi-tilde-fringe uuidgen use-package unfill treemacs-projectile treemacs-magit toc-org tagedit symon symbol-overlay string-inflection spaceline-all-the-icons smex smeargle slim-mode shell-pop scss-mode sass-mode restart-emacs rainbow-delimiters pytest pyenv-mode py-isort pug-mode prettier-js popwin pippel pipenv pip-requirements persp-mode pcre2el password-generator paradox overseer orgit org-projectile org-present org-pomodoro org-mime org-journal org-download org-cliplink org-bullets org-brain open-junk-file noflet nodejs-repl nameless mwim mvn multi-term move-text mmm-mode meghanada maven-test-mode markdown-toc magit-svn magit-gitflow macrostep lsp-ui lsp-treemacs lsp-python-ms lsp-java lsp-haskell lorem-ipsum livid-mode live-py-mode link-hint json-navigator json-mode js2-refactor js-doc intero indent-guide importmagic impatient-mode hybrid-mode hungry-delete hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation helm-xref helm-themes helm-swoop helm-pydoc helm-purpose helm-projectile helm-org-rifle helm-org helm-mode-manager helm-make helm-lsp helm-hoogle helm-gitignore helm-git-grep helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag haskell-snippets groovy-mode groovy-imports graphviz-dot-mode gradle-mode google-translate golden-ratio gnuplot gitignore-templates gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md fuzzy font-lock+ flycheck-pos-tip flycheck-package flycheck-haskell flx-ido fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-textobj-line evil-surround evil-org evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-lion evil-indent-plus evil-iedit-state evil-goggles evil-exchange evil-escape evil-ediff evil-cleverparens evil-args evil-anzu eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav editorconfig dumb-jump dotenv-mode doom-modeline diminish diff-hl devdocs define-word dap-mode dante cython-mode csv-mode company-web company-tern company-statistics company-lsp company-ghci company-ghc company-cabal company-anaconda column-enforce-mode cmm-mode clojure-snippets clean-aindent-mode cider-eval-sexp-fu cider centered-cursor-mode browse-at-remote blacken auto-yasnippet auto-highlight-symbol auto-compile attrap aggressive-indent ace-link ace-jump-helm-line ac-ispell))
 '(pdf-view-midnight-colors '("#655370" . "#fbf8ef"))
 '(projectile-use-git-grep t)
 '(python-indent-offset 2)
 '(python-shell-interpreter "ipython")
 '(safe-local-variable-values
   '((eval
      (lambda nil
        (when
            (not
             (featurep 'clerk))
          (let
              ((init-file-path
                (expand-file-name "clerk.el" default-directory)))
            (when
                (file-exists-p init-file-path)
              (load init-file-path)
              (require 'clerk))))))
     (javascript-backend . tide)
     (cider-default-cljs-repl . shadow)
     (cider-preferred-build-tool . shadow-cljs)
     (cider-figwheel-main-default-options . ":dev")
     (cider-figwheel-main-default-options . ":fig")
     (cider-default-cljs-repl . figwheel-main)
     (cider-clojure-cli-aliases . "-A:fig")
     (eval
      (lambda nil
        (when
            (not
             (featurep 'nextjournal))
          (let
              ((init-file-path
                (expand-file-name "emacs.d/nextjournal.el" default-directory)))
            (when
                (file-exists-p init-file-path)
              (load init-file-path)
              (require 'nextjournal))))))
     (cider-refresh-after-fn . "com.nextjournal.journal.repl/post-refresh")
     (cider-refresh-before-fn . "com.nextjournal.journal.repl/pre-refresh")
     (org-use-property-inheritance . t)
     (typescript-backend . tide)
     (typescript-backend . lsp)
     (org-download-image-dir . "images")
     (javascript-backend . tern)
     (javascript-backend . lsp)))
 '(scala-indent:step 2)
 '(sh-basic-offset 2)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
