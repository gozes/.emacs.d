(req-package robe
  :init
  (progn
    (add-hook 'ruby-mode-hook 'robe-mode))
  :config
  (progn
    (push 'company-robe company-backends)
    (robe-start)))
