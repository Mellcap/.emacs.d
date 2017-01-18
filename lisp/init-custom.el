;; Setting English Font
(setq default-font "Monaco 13")
(set-face-attribute 'default nil :font default-font)

;; set default
(setq-default initial-scratch-message
              (concat ";; Happy hacking, " user-login-name " - Emacs ♥ you!\n\n"))


;; auto complete parentheses
(electric-pair-mode t)

;;----------------------------------------------------------------------------
;; Handy key bindings
;;----------------------------------------------------------------------------
(global-set-key (kbd "C-.") 'set-mark-command)
(global-set-key (kbd "C-x C-.") 'pop-global-mark)

;; disable auto backup
(setq make-backup-files nil)

;; disable ido merge "looking in other directories"
(setq ido-auto-merge-work-directories-length -1)
;; Use "C-x C-f C-f" to normal find mode

;; set cursor to a vertical bar
(setq-default cursor-type 'bar)

;; xml indent 4 spaces
(setq nxml-child-indent 4 nxml-attribute-indent 4)

;; split window vertical

;; split window move point
;; (defadvice split-window (after move-point-to-new-window activate)
;;   "Moves the point to the newly created window after splitting."
;;   (other-window 1))

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

;; display time
(display-time-mode 1)

;; set y means yes
(fset 'yes-or-no-p 'y-or-n-p)

;; set newline at final
(setq require-final-newline t)

;; 当光标在行尾上下移动的时候，始终保持在行尾。
(setq track-eol t)

;;把C-j绑定到”到达指定行上”(goto-line)
(global-set-key (kbd "C-j") 'goto-line)

(provide 'init-custom)
