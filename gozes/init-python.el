(req-package elpy
  :init (progn
	  (add-hook 'elpy-mode-hook 'gozes-elpy-mode-guide-key-hook)
	  (add-hook 'elpy-mode-hook '(setq highlight-indentation-mode f))
	  (custom-set-variables
	   '(elpy-rpc-python-command "python3")
	   '(elpy-rpc-backend "jedi"))))


(defun gozes-elpy-mode-guide-key-hook ()
  (guide-key/add-local-guide-key-sequence "C-c")
  (guide-key/add-local-guide-key-sequence "M-")
  (guide-key/add-local-highlight-command-regexp "elpy-"))

 (elpy-enable)
