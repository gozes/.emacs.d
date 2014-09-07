
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

<<<<<<< HEAD
(add-hook 'after-init-hook #'(lambda () (load (concat user-emacs-directory "gozes-bootstrap.el"))))
=======
(eval-after-load 'org-mode (require 'init-org-mode))
(eval-after-load 'emacs-lisp-mode (require 'init-elisp))
(add-hook 'ruby-mode-hook '(lambda () (require 'init-ruby-mode)))
(eval-after-load 'clojure-mode '(require 'init-clojure-mode))
;; you need to symlink your erc config to ercrc
;; ln -s ~/.emacs.d/gozes/init-erc.el  ~/.emacs.d/.ercrc.el



>>>>>>> cecaae95aaac9f9622daff599dcd8fffdd3913eb

(elpy-enable)


