(req-package go-mode
  :config (progn
	    (add-hook 'go-mode-hook 'go-eldoc-setup)
	    (setq gofmt-command "goimports")))

(req-package go-eldoc)
(req-package company-go)
