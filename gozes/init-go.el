(req-package go-mode
  :config (progn
	    (add-hook 'go-mode-hook 'go-eldoc-setup)))

(req-package go-eldoc)
(req-package company-go)
