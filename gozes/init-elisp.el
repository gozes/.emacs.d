(req-package emacs-lisp-mode
  :init (progn (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)))

 (provide 'init-elisp)
