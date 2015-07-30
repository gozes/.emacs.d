
(req-package company
  :init (progn
	  (global-company-mode)))

(req-package magit

  :bind ("C-c g" . magit-status))



(req-package json-mode
  :defer t)
(req-package json-reformat
  :defer t)

(setq whitespace-action '(auto-cleanup))

(bind-key "C-c =w" 'whitespace-mode)

(setq next-line-add-newlines t)

(fset 'yes-or-no-p 'y-or-n-p)

(req-package helm
  :defer t
  
  :config
  (progn
    (require 'helm-config)
    (setq helm-idle-delay 0.0
	  helm-input-idle-delay 0.01
	  helm-quick-update t
	  helm-M-x-requires-pattern nil
	  helm-ff-skip-boring-files t
	  helm-split-window-in-side-p t
	  helm-move-to-line-cycle-in-source t
	  helm-ff-search-library-in-sexp t)
    (helm-mode)
    (bind-key "C-c o" 'helm-occur))
  :bind (("C-c h" . helm-mini)
	 ("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)))



(req-package helm-descbinds
  :defer t
  :init
  (progn
    (require 'helm-descbinds)
    (helm-descbinds-mode)))

(req-package scheme-mode
  :defer t
  :mode "\\.scm\\'"
  :interpreter "petite")

(req-package smartparens
  :config
  (progn
    (require 'smartparens-config)
    (smartparens-global-strict-mode t)
    (show-smartparens-global-mode t)
    (bind-key "C-M-f" 'sp-forward-sexp)
    (bind-key "C-M-b" 'sp-backward-sexp)
    (bind-key "C-M-n" 'sp-next-sexp)
    (bind-key "C-M-p" 'sp-previous-sexp)
    (bind-key "C-M-e" 'sp-up-sexp)
    (bind-key "C-M-u" 'sp-backward-up-sexp)
    (bind-key "C-M-d" 'sp-down-sexp)
    (bind-key "C-M-a" 'sp-backward-down-sexp)
    (bind-key "C-)" 'sp-forward-slurp-sexp)
    (bind-key "C-}" 'sp-forward-barf-sexp)
    (bind-key "C-(" 'sp-backward-slurp-sexp)
    (bind-key "C-{" 'sp-backward-barf-sexp)
    (bind-key "C-M-k" 'sp-kill-sexp)
    (bind-key "C-M-K" 'sp-backward-kill-sexp)))


(req-package toml-mode
  :defer t)

(add-to-list 'auto-mode-alist '("\\.*rc$" . conf-unix-mode))

(req-package yasnippet
  :defer t)

(req-package markdown-mode
  :defer t)

;; (req-package ergoemacs-mode
;;   :init
;;   (progn
;;     (setq ergoemacs-theme "lvl1")
;;     (setq ergoemacs-keyboard-layout "dv")
;;     (ergoemacs-theme-option-on '(guru))
;;     (ergoemacs-mode 1)))

(provide 'init-exten)




