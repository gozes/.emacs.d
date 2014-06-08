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

(setq next-line-add-newlines t)

(fset 'yes-or-no-p 'y-or-n-p)

(provide 'init-exten)
