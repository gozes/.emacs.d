
;; set up lode path for other config
(defconst  gozes-config (concat user-emacs-directory "gozes/") "gozes-config")
(add-to-list 'load-path gozes-config)
(require 'init-packages)
(require 'init-looks)
(require 'init-ido)
(require 'init-keybinds)
(require 'init-mode-alist)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; update the buffuer if a file has change on disk
(global-auto-revert-mode)

(eval-after-load 'org-mode (require 'init-org-mode))
(eval-after-load 'emacs-lisp-mode (require 'init-elisp))
(add-hook 'ruby-mode-hook '(lambda () (require 'init-ruby-mode)))
;; you need to symlink your erc config to ercrc
;; ln -s ~/.emacs.d/gozes/init-erc.el  ~/.emacs.d/.ercrc.el






