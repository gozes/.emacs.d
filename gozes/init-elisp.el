(require 'init-ac-mode)
(require 'smartparens-config)
(require 'rainbow-delimiters)
(add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters)
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)

(provide 'init-elisp)
