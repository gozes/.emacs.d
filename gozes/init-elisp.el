<<<<<<< HEAD
(req-package emacs-lisp-mode
  :init (progn
	  (add-hook 'emacs-lisp-mode-hook 'company-mode)
	  (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)))
=======
(require 'init-ac-mode)
(require 'smartparens-config)
(require 'rainbow-delimiters)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters)
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
>>>>>>> cecaae95aaac9f9622daff599dcd8fffdd3913eb

 (provide 'init-elisp)
