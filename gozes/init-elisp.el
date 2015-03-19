(req-package emacs-lisp-mode
  :difer t
  :config (progn
	  (add-hook 'emacs-lisp-mode-hook 'company-mode)
	  (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)))

 
