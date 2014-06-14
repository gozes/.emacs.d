(req-package coffee-mode
  :init (progn
	  (add-hook 'coffee-mode-hook 'gozes-coffee-mode-guide-key-hook)
	  (setq coffee-tab-width 2)))



(defun gozes-coffee-mode-guide-key-hook ()
  (guide-key/add-local-guide-key-sequence "C-c")
  (guide-key/add-local-highlight-command-regexp "coffee-"))
