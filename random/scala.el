(add-hook 'scala-mode-hook
          '(lambda ()
             ;; Alternatively, bind the 'newline-and-indent' command and
             ;; 'scala-indent:insert-asterisk-on-multiline-comment' to RET in
             ;; order to get indentation and asterisk-insertion within multi-line
             ;; comments.
             (local-set-key (kbd "RET")
                            '(lambda ()
                               (interactive)
                               (newline-and-indent)
                               (scala-indent:insert-asterisk-on-multiline-comment)))

             ;; Bind the 'join-line' command to C-M-j. This command is normally
             ;; bound to M-^ which is hard to access, especially on some European
             ;; keyboards. The 'join-line' command has the effect or joining the
             ;; current line with the previous while fixing whitespace at the
             ;; joint.
             (local-set-key (kbd "C-M-j") 'join-line)

             ;; Bind the backtab (shift tab) to
             ;; 'scala-indent:indent-with-reluctant-strategy command. This is usefull
             ;; when using the 'eager' mode by default and you want to "outdent" a
             ;; code line as a new statement.
             (local-set-key (kbd "<backtab>") 'scala-indent:indent-with-reluctant-strategy)
             ))
