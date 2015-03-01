(req-package go-mode
  :defer t
  :config (progn
	    (add-hook 'go-mode-hook 'go-eldoc-setup)
	    (setq gofmt-command "goimports")))

(req-package go-eldoc
  :defer t)
(req-package company-go
  :defer t)
