;; Mellcap's emacs config

;;----------------------------------------------------------------------------
;; Add list dir to search path
;;----------------------------------------------------------------------------


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;;----------------------------------------------------------------------------
;; Set const
;;----------------------------------------------------------------------------

(defconst *is-a-mac* (eq system-type 'darwin))

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------

(require 'init-osx-keys)
(require 'init-gui-frames)
(require 'init-custom)
(require 'atom-one-dark)

(require 'init-elpa)
(require 'init-install-packages)
(require 'init-elpy)
(require 'init-flycheck)
(require 'init-multiple-cursors)
(require 'init-neotree)
