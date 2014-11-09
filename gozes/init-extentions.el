;; (req-package auto-complete
;;   :init (progn
;; 	  (require 'auto-complete-config)
;; 	  (ac-config-default)
;; 	  (setq ac-auto-show-menu t)
;; 	  (setq ac-show-menu-immediately-on-auto-complete t)))

(req-package melp)

(req-package company
  :init (progn
	  (global-company-mode)))

(req-package magit
  :bind ("C-c C-g" . magit-status))

(req-package guide-key
  :init (progn
	  (require 'guide-key)
	  (setq guide-key/popup-window-position 'bottom)
	  (setq guide-key/guide-key-sequence '("C-x r" "C-x 4"))
	  (guide-key-mode 1)))

(req-package flycheck
  :init (progn
	   (add-hook 'flycheck-mode-hook 'gozes-flycheck-mode-guide-key-hook)))

(defun gozes-flycheck-mode-guide-key-hook ()
  (guide-key/add-local-guide-key-sequence "C-c !")
  (guide-key/add-local-highlight-command-regexp "flycheck-"))


(req-package rainbow-delimiters)

(req-package json-mode)
(req-package json-reformat)

(setq whitespace-action '(auto-cleanup))

(bind-key "C-c =w" 'whitespace-mode)

(setq next-line-add-newlines t)

(fset 'yes-or-no-p 'y-or-n-p)

(req-package helm
  :init
  (progn
    (require 'helm-config)
    (setq helm-idle-delay 0.0
	  helm-input-idle-delay 0.01
	  helm-quick-update t
	  helm-M-x-requires-pattern nil
	  helm-ff-skip-boring-files t
	  helm-split-window-in-side-p t
	  helm-move-to-line-cycle-in-source t
	  helm-ff-search-library-in-sexp t)
    (helm-mode))
  :bind (("C-c h" . helm-mini)
	 ("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)))

(req-package helm-descbinds
  :init
  (progn
    (require 'helm-descbinds)
    (helm-descbinds-mode)))

(req-package scheme-mode
  :mode "\\.scm\\'"
  :interpreter "petite")

(provide 'init-exten)
