
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

(use-package org
	:config (require 'init-org-mode))

(eval-after-load 'emacs-lisp-mode (require 'init-elisp))
(add-hook 'ruby-mode-hook '(lambda () (require 'init-ruby-mode)))
;; you need to symlink your erc config to ercrc
;; ln -s ~/.emacs.d/gozes/init-erc.el  ~/.emacs.d/.ercrc.el

(use-package haskell-mode
	:config
	(progn
		(bind-key "C-x C-d" nil haskell-mode-map)
		(bind-key "C-c C-z" 'haskell-interactive-switch haskell-mode-map)
		(bind-key "C-c C-l" 'haskell-process-load-file haskell-mode-map)
		(bind-key "C-c C-b" 'haskell-interactive-switch haskell-mode-map)
		(bind-key "C-c C-t" 'haskell-process-do-type haskell-mode-map)
		(bind-key "C-c C-i" 'haskell-process-do-info haskell-mode-map)
		(bind-key "C-x M-." nil haskell-mode-map)
		(bind-key "C-x C-d" nil haskell-mode-map)
		(bind-key "C-," 'haskell-move-nested-left haskell-mode-map)
		(bind-key "C-," 'haskell-move-nested-right haskell-mode-map)
		(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
		(add-hook 'haskell-mode-hook 'flymake-haskell-multi-load)))

(load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
  (setq inferior-lisp-program "/usr/bin/sbcl")



