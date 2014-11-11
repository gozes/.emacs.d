(req-package elpy
  :init (progn
	  (elpy-enable)
	  (add-hook 'elpy-mode-hook '(setq highlight-indentation-mode f))
	  (setq elpy-rpc-python-command "python3")
	  (setq elpy-rpc-backend "jedi")))

(provide 'init-python)
