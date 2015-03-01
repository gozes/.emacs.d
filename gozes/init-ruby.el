(req-package robe
  :defer t
  :init
  (progn
    (add-hook 'ruby-mode-hook 'robe-mode)
    (add-to-list 'auto-mode-alist
		 '("\\.\\(?:gemspec\\|irbrc\\|gemrc\\|rake\\|rb\\|ru\\|thor\\)\\'" . ruby-mode))
    (add-to-list 'auto-mode-alist
		 '("\\(Capfile\\|Gemfile\\(?:\\.[a-zA-Z0-9._-]+\\)?\\|[rR]akefile\\)\\'" . ruby-mode))
    (push 'company-robe company-backends)))

(req-package minitest
  :defer t 
  :init
  (progn
    (add-hook 'ruby-mode-hook 'minitest-mode)))


