;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))

(defconst sam?    (string= "Sam Ritchie" (user-full-name)) "Am I me?")
(defconst linux?   (eq system-type 'gnu/linux) "Are we on a linux machine?")
(defconst mac?     (eq system-type 'darwin)    "Are we on a macOS machine?")
(defconst windows? (not (or linux? mac?))      "Are we on windows machine?")

(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '("~/.spacemacs.d/layers/")


   ;; List of configuration layers to load. (add more to config/layers.el)
   dotspacemacs-configuration-layers
   '(systemd
     (config :location local)
     (personal :location local))

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages
   '(nand2tetris
     vega-view
     edit-indirect)

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs

   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'org-mode

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(zenburn
                         spacemacs-dark
                         spacemacs-light)

   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)

   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")

   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil

   ;; Delete whitespace while saving buffer. Possible values are `all' to
   ;; aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (setq custom-file "~/.spacemacs.d/.custom-settings.el")
  (load custom-file)
  (setq org-tasks-file nil)

  (setq nand2tetris-core-base-dir "~/code/nand2tetris")

  ;; I need this for now, since ensime-mode automatically adds itself.
  (add-hook 'scala-mode-hook (lambda () (ensime-mode -1)))
  (add-hook 'scheme-mode-hook #'turn-on-smartparens-strict-mode)
  (add-hook 'geiser-repl-mode-hook #'turn-on-smartparens-strict-mode)
  (add-hook 'emacs-lisp-mode-hook #'turn-on-smartparens-strict-mode)
  (add-hook 'racket-mode-hook #'turn-on-smartparens-strict-mode)
  (add-hook 'racket-repl-mode-hook #'turn-on-smartparens-strict-mode)
  (add-hook 'clojure-mode-hook #'turn-on-smartparens-strict-mode)
  (add-hook 'cider-repl-mode-hook #'turn-on-smartparens-strict-mode)
  (add-hook 'inferior-scheme-mode-hook #'turn-on-smartparens-strict-mode)

  (add-hook 'clojure-mode-hook
            (lambda ()
              (local-set-key (kbd "C-c v") 'vega-view)))

  ;; tex input! I had to run `set-input-method' with TeX to get this going.
  ;; (add-hook 'clojure-mode-hook 'toggle-input-method)

  ;; Trying this out. this should be so good for lisp.
  (add-hook 'scheme-mode-hook #'aggressive-indent-mode)
  (add-hook 'geiser-repl-mode-hook #'aggressive-indent-mode)
  (add-hook 'clojure-mode-hook #'aggressive-indent-mode)
  (add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
  )

(defun dotspacemacs/user-config/post-layer-load-config ()
  "Configuration to take place *after all* layers/pkgs are
  instantiated."
  (global-set-key (kbd "s-<backspace>") 'backward-kill-global)
  (global-set-key (kbd "C-w") 'backward-kill-word)
  (global-set-key (kbd "C-x C-k") 'kill-region)
  (global-set-key (kbd "s-/") 'comment-line)

  (defun clerk-show ()
    (interactive)
    (save-buffer)
    (let
        ((filename
          (buffer-file-name)))
      (when filename
        (cider-interactive-eval
         (concat "(nextjournal.clerk/show! \"" filename "\")")))))

  ;; js.
  (setq javascript-fmt-tool 'prettier)
  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (add-hook 'web-mode-hook 'prettier-js-mode)

  ;; Get the pretty lambdas.
  (global-prettify-symbols-mode 1)

  (defun enable-pretty-lambdas ()
    "Make them beautiful!"
    (setq prettify-symbols-alist '(("lambda" . 955))))

  (add-hook 'racket-mode-hook 'enable-pretty-lambdas)
  (add-hook 'racket-repl-mode-hook 'enable-pretty-lambdas)

  ;; the goods for lisps. Important.
  (sp-use-paredit-bindings)

  ;; (require 'cmuscheme)

  ;; (defun mechanics-local ()
  ;;   (interactive)
  ;;   (run-cmu-scheme "mechanics"))

  ;; ;; And finally, the goods for SICM.
  ;; (defun mechanics ()
  ;;   (interactive)
  ;;   (let ((default-directory (or (projectile-project-root)
  ;;                                default-directory)))
  ;;     (call-interactively #'mechanics-local)))

  ;; ;; Here's an older version that does NOT use my docker stuff.
  ;; (defun mechanics-osx ()
  ;;   (interactive)
  ;;   (run-cmu-scheme "mechanics-osx"))

  ;; This is required for better LaTeX in org mode.
  (setq org-latex-create-formula-image-program 'dvisvgm)

  ;; I guess I can override this for specific images.
  (setq org-image-actual-width nil)

  ;; This sets properties for image downloading, so I can embed images directly.
  (setq org-download-image-attr-list
        '("#+attr_org: :width 400px"
          "#+attr_html: :width 80% :align center"
          "#+attr_latex: :width 8cm"))

  ;; This lets me take screenshots on OS X.
  (setq org-download-screenshot-method "screencapture -i %s")

  ;; This adds support for embedding dropbox images
  (add-to-list 'org-html-inline-image-rules
               `("https" . ,(format "\\.%s\\'"
                                    (regexp-opt
                                     '("gif?dl=1")
                                     t))))

  ;; And this gives me nice export for LaTeX, using scheme. THIS is why I need
  ;; the BS above, since this will load xscheme and overwrite the original
  ;; stuff.
  ;;
  ;; required to get org-mode exporting the goodies.
  ;; (load "~/.spacemacs.d/ob-mit-scheme.el")
  ;; (require 'ob-mit-scheme)

  ;; ;; this is used by xscheme now.
  ;; (setq scheme-program-name "mechanics")
  (setq geiser-mit-binary "/Users/sritchie/bin/mechanics")
  (setq geiser-repl-current-project-function 'projectile-project-root)
  (setq jit-lock-mode nil)

  ;; Now, the modifications for github flavored markdown export! This handles
  ;; extra-escaping the inline syntax, so it's available for processing by the
  ;; Mathjax interpreter.
  (defmacro ->> (&rest body)
    (let ((result (pop body)))
      (dolist (form body result)
        (setq result (append form (list result))))))

  (defun replace-in-string (what with in)
    (replace-regexp-in-string (regexp-quote what) with in nil 'literal))

  (defun escape-gfm-latex-characters (text)
    (->> text
         (replace-in-string "\\(" "\\\\(")
         (replace-in-string "\\)" "\\\\)")
         (replace-in-string "\\[" "\\\\[")
         (replace-in-string "\\]" "\\\\]")
         (replace-in-string "_" "\\_")))

  (defun org-gfm-latex-filter (text backend info)
    "Properly escape code so it gets rendered."
    (when (org-export-derived-backend-p backend 'gfm)
      (escape-gfm-latex-characters text)))

  ;; TODO this should only happen if you're actually in a github repository.
  ;;
  (require 'git-link)
  ;; TODO it WOULD be nice to get some resizing going by emitting these images
  ;; as actual embedded HTML. for the future!
  (defun org-gfm-link-filter (text backend info)
    "Render github markdown links for images stored in the folder."
    (when (and (org-export-derived-backend-p backend 'gfm)
               ;; only get images.
               (string-prefix-p "!" text))
      (let* ((remote (git-link--select-remote))
             (remote-url (git-link--remote-url remote)))
        (when-let ((remote-info (when remote-url (git-link--parse-remote remote-url))))
          (let ((url (format "https://%s/%s" (car remote-info) (cadr remote-info))))
            (replace-in-string "images/" (concat url "/raw/master/images/") text))))))

  (require 'ox)

  ;; These are required to get proper escaping in github-flavored markdown for
  ;; latex snippets and embedded equations and environments.
  (add-to-list 'org-export-filter-latex-fragment-functions 'org-gfm-latex-filter)
  (add-to-list 'org-export-filter-latex-environment-functions 'org-gfm-latex-filter)
  (add-to-list 'org-export-filter-link-functions 'org-gfm-link-filter)

  ;; Override the built-in stuff in org-md-export-block, since I don't want to
  ;; declare my own backend.
  (defun org-md-export-block (export-block contents info)
    "Transcode a EXPORT-BLOCK element from Org to Markdown.
CONTENTS is nil. INFO is a plist holding contextual information."
    (let ((prop-type (org-element-property :type export-block)))
      (cond ((string= prop-type "LATEX")
             (let ((core (org-remove-indentation (org-element-property :value export-block))))
               (escape-gfm-latex-characters
                (if (string-prefix-p "\\begin" core)
                    core
                  (concat "\\[\n" core "\\]")))))

            ;; this is the default markdown behavior.
            ((member prop-type '("MARKDOWN" "MD"))
             (org-remove-indentation (org-element-property :value export-block)))

            ;; Also include the default for HTML export blocks.
            (t (org-export-with-backend 'html export-block contents info)))))

  ;; This is so I can do an unnumbered preface.
  (setq org-num-skip-unnumbered 't)

  (defun with-filter (sym fn)
    "I don't know how to do lexical rebinding, so this is the
    best I can do."
    (if (member sym org-export-filter-link-functions)
        (funcall fn)
      (progn (add-to-list 'org-export-filter-link-functions sym)
             (funcall fn)
             (setq org-export-filter-link-functions
                   (remove sym org-export-filter-link-functions)))))

  ;; now, some code to export chapters.
  (defun org-export-md-chapters ()
    "Export all subtrees that are *not* tagged with :noexport: to
separate files.

Subtrees that do not have the :EXPORT_FILE_NAME: property set
are exported to a filename derived from the headline text."
    (interactive)
    (with-filter
     'org-gfm-link-filter
     (lambda ()
       (let ((ticker 1)
             (fn 'org-gfm-export-to-markdown)
             (modifiedp (buffer-modified-p)))
         (save-excursion
           (goto-char (point-min))
           (goto-char (re-search-forward "^*"))
           (set-mark (line-beginning-position))
           (goto-char (point-max))
           (org-map-entries
            (lambda ()
              (let* ((export-file (org-entry-get (point) "EXPORT_FILE_NAME"))
                     (unnumbered (org-entry-get (point) "UNNUMBERED"))
                     (prefix (if unnumbered
                                 "md/"
                               (concat "md/" (number-to-string ticker) "_"))))
                (unless export-file
                  (org-set-property
                   "EXPORT_FILE_NAME"
                   (->> (nth 4 (org-heading-components))
                        (replace-regexp-in-string " " "_")
                        (replace-in-string ":" "")
                        (downcase)
                        (concat prefix))))
                (deactivate-mark)
                (funcall fn nil t)

                ;; Increment the counter.
                (unless unnumbered
                  (setf ticker (1+ ticker)))

                (unless export-file (org-delete-property "EXPORT_FILE_NAME"))
                (set-buffer-modified-p modifiedp)))
            "-noexport" 'region-start-level)))))

    ;; Then, we proceed.
    (setq company-lsp-async t))
  (setq org-directory "/Volumes/GoogleDrive/My Drive/org")
  (setq org-default-notes-file (concat org-directory "/notes.org"))
  (setq org-tasks-file (concat org-directory "/gtd.org"))

  (customize-set-variable 'org-journal-dir (concat org-directory "/journal/"))
  (setq org-agenda-file-regexp "\\`\\\([^.].*\\.org\\\|[0-9]\\\{8\\\}\\\(\\.gpg\\\)?\\\)\\'")

  (pyvenv-workon "deep")

  (global-undo-tree-mode)

  ;; TODO fix this!
  ;; (add-to-list 'org-agenda-files org-journal-dir)

  (defun org-journal-find-location ()
    ;; Open today's journal, but specify a non-nil prefix argument in order to
    ;; inhibit inserting the heading; org-capture will insert the heading.
    (org-journal-new-entry t)
    ;; Position point on the journal's top-level heading so that org-capture
    ;; will add the new entry as a child entry.
    (goto-char (point-min)))

  (setq org-capture-templates
        '(
          ("t" "Todo" entry (file+headline org-tasks-file "Tasks")
           "* TODO %?\n  %i\n  %a")
          ("j" "Journal entry"
           entry
           (function org-journal-find-location)
           "** %(format-time-string org-journal-time-format)%^{Title}\n%i%?")))

  ;; Get code highlighting working on org-mode export
  (setq org-latex-listings 'minted
        org-latex-packages-alist '(("" "minted"))
        org-latex-pdf-process
        '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
          "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))

  (add-to-list 'auto-mode-alist '("\\.hdl\\'" . nand2tetris-mode))
  (add-to-list 'auto-mode-alist '("\\.vlad\\'" . scheme-mode))
  (add-to-list 'auto-mode-alist '("\\.dvl\\'" . scheme-mode))
  (add-to-list 'auto-mode-alist '("\\.sc\\'" . scheme-mode))

  ;; hack to make sure 'company-lsp is only pushed after company package is loaded
  (use-package company
    :config
    (push 'company-lsp company-backends))

  ;; Really exit?
  (setq confirm-kill-emacs #'yes-or-no-p))

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (dotspacemacs/user-config/post-layer-load-config)
  ;; (global-set-key (kbd "M-x") 'smex)
  ;; (global-set-key (kbd "M-X") 'smex-major-mode-commands)

  ;; This is your old M-x.
  ;;(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
  )
