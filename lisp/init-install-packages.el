;; Install Packages

(defvar myPackages
  '(better-defaults
    elpy
    flycheck
))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)


(provide 'init-install-packages)
