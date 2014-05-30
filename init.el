
(require 'package)

(dolist (repo '(("melpa" . "http://melpa.milkbox.net/packages/")
                ("marmalade" . "http://marmalade-repo.org/packages/")
                ("elpa" . "http://tromey.com/elpa/")
		("org" . "http://orgmode.org/elpa/")))
  (add-to-list 'package-archives repo))



;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; update the buffuer if a file has change on disk
(global-auto-revert-mode)

(add-hook 'after-init-hook #'(lambda () (load (concat user-emacs-directory "gozes-bootstrap.el"))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(quack-programs (quote ("mit-scheme-x86-64" "bigloo" "csi" "csi -hygienic" "gosh" "gracket" "gsi" "gsi ~~/syntax-case.scm -" "guile" "kawa" "mit-scheme" "racket" "racket -il typed/racket" "rs" "scheme" "scheme48" "scsh" "sisc" "stklos" "sxi"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
