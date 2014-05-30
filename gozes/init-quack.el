(req-package quack
  :init (progn
	   (setq quack-default-program "mit-scheme-x86-64")
	   (add-hook 'quack-mode-hook 'gozes-quack-mode-guide-key-hook)))



(defun gozes-quack-mode-guide-key-hook ()
  (guide-key/add-local-guide-key-sequence "C-c")
  (guide-key/add-local-highlight-command-regexp "quack-"))
