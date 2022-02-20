;;; -*- lexical-binding: t; -*-

(configuration-layer/declare-layers
 '(;; Core
   (auto-completion :variables
                    auto-completion-return-key-behavior 'complete
                    auto-completion-tab-key-behavior 'complete
                    auto-completion-enable-snippets-in-popup t)
   better-defaults
   git
   gpu
   helm
   smex
   (org :variables
        org-enable-github-support t
        org-enable-hugo-support t
        org-enable-org-journal-support t
        org-want-todo-bindings t)
   (shell :variables
          shell-default-height 30
          shell-default-position 'bottom
          shell-default-shell 'eshell)
   syntax-checking
   version-control

   ;; Misc
   graphviz
   latex
   multiple-cursors
   docker

   ;; Markups
   asciidoc
   csv
   html
   markdown
   yaml

   ;; Languages
   coffeescript
   (clojure :variables
            clojure-backend 'cider
            clojure-enable-linters 'clj-kondo)
   emacs-lisp
   haskell
   javascript
   typescript
   racket
   rust
   lsp
   markdown
   (python :variables
           python-format-on-save t
           python-formatter 'yapf
           python-backend 'lsp
           python-sort-imports-on-save t)
   (scala :packages (not ensime)
          :variables
          scala-auto-insert-asterisk-in-comments t
          scala-backend 'scala-metals)))
