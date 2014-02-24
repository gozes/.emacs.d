
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


(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'flymake-haskell-multi-load)

(eval-after-load "haskell-mode"
  '(progn
    (define-key haskell-mode-map (kbd "C-x C-d") nil)
    (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
    (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-file)
    (define-key haskell-mode-map (kbd "C-c C-b") 'haskell-interactive-switch)
    (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
    (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
    (define-key haskell-mode-map (kbd "C-c M-.") nil)
    (define-key haskell-mode-map (kbd "C-c C-d") nil)))


(eval-after-load "haskell-mode"
  '(progn
     (define-key haskell-mode-map (kbd "C-,") 'haskell-move-nested-left)
     (define-key haskell-mode-map (kbd "C-.") 'haskell-move-nested-right)))


(load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
  (setq inferior-lisp-program "sbcl")


("quicklisp-slime-helper")
