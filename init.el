
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

(elpy-enable)


