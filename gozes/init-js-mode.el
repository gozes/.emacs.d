(req-package js2-mode
  :init (progn
	  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
	  (add-to-list 'interpreter-mode-alist '("node" . js2-mode))))
