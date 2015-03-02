(req-package anaconda-mode
  :defer t
  :init
  (progn
    (add-hook 'python-mode-hook 'anaconda-mode))
  :config
  (progn
    (pyenv-mode)))

(req-package company-anaconda
  :defer t
  :init
  (progn
    (add-to-list 'company-backends 'company-anaconda)))

(req-package pyenv-mede
  :defer t)



(provide 'init-python)
