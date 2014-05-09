(req-package auto-complete
  :init (progn
	  (require 'auto-complete-config)
	  (ac-config-default)
	  (setq ac-auto-show-menu t)
	  (setq ac-show-menu-immediately-on-auto-complete t)))

(req-package melp)

(req-package magit
  :bind ("C-c C-g" . magit-status))

(setq next-line-add-newlines t)

(provide 'init-exten)
