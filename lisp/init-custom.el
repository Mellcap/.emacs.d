;; Setting English Font
(setq default-font "Monaco 13")
(set-face-attribute 'default nil :font default-font)

;; auto complete parentheses
(electric-pair-mode t)

;;----------------------------------------------------------------------------
;; Handy key bindings
;;----------------------------------------------------------------------------
(global-set-key (kbd "C-.") 'set-mark-command)
(global-set-key (kbd "C-x C-.") 'pop-global-mark)

;; add ibuffer
;;(global-set-key (kbd "C-x C-b") 'ibuffer)
;;(autoload 'ibuffer "ibuffer" "List buffers." t)

;; command M-;
(defun comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
If no region is selected and current line is not blank and
we are not at the end of the line, then comment current line.
Replaces default behaviour of comment-dwim,
when it inserts comment at the end of the line. "

  (interactive "*P")
  (comment-normalize-vars)

  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))


(global-set-key "\M-;" 'comment-dwim-line)

(provide 'init-custom)
