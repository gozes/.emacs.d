(req-package anaconda-mode
  :defer t
  :init
  (progn
    (add-hook 'python-mode-hook 'anaconda-mode)
    (setq python-shell-interpreter "python2.7"))
  :config
  (progn
    (setq python-shell-virtualenv-path nil)
    (bind-key "C-c C-c r" 'gozes-anaconda-mode-python3 anaconda-mode)))

(req-package company-anaconda
  :defer t
  :init
  (progn
    (add-to-list 'company-backends 'company-anaconda)))


(defun gozes-anaconda-mode-python3 ()
  (interactive)
  (setq python-shell-interpreter "python3.4")
  (anaconda-mode-start))


(provide 'init-python)
