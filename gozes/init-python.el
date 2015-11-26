;; (req-package anaconda-mode
;;   :defer t
;;   :init
;;   (progn
;;     (add-hook 'python-mode-hook 'anaconda-mode)
;;     (setq python-shell-interpreter "python2.7"))
;;   :config
;;   (progn
;;     (setq python-shell-virtualenv-path nil)
;;     (bind-key "C-c C-c r" 'gozes-anaconda-mode-python3 anaconda-mode)
;;     (bind-key "C-c C-c g" 'anaconda-mode-goto-definitions anaconda-mode)
;;     (bind-key "C-c C-c p" 'anaconda-nav-pop-marker anaconda-mode)
;;     (defun gozes-anaconda-mode-python3 ()
;;       (interactive)
;;       (setq python-shell-interpreter "python3.4")
;;       (anaconda-mode-start))))

;; (req-package company-anaconda
;;   :defer t
;;   :init
;;   (progn
;;     (add-to-list 'company-backends 'company-anaconda)))
(use-package company-jedi
  :ensure t
  :defer t
  :config (progn
	    (add-to-list 'company-backends 'company-jedi)))

(setq gozes-prefered-sysetm-python (executable-find "python3"))
(setq gozes-prefered-system-python-set t)

(defun gozes-switch-prefered-system-python ()
  (interactive)
  (if gozes-prefered-system-python-set
      (setq py-python-command gozes-prefered-system-python))
  (progn
    (setq gozes-prefered-sysetm-python (executable-find "python"))
    (setq gozes-prefered-sysetm-python-set nil)))
(use-package python-mode
  :init
  (use-package jedi-core
	 :ensure t
	 :defer t
	 :bind
	 (:map jedi-mode-map
		     ("C-c s p" . gozes-switch-prefered-system-python))
	 :config
	 (progn
	   (add-hook 'python-mode-hook 'jedi:setup)
	   (setq py-python-command gozes-prefered-sysetm-python))))


(provide 'init-python)
