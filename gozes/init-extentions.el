;; (req-package auto-complete
;;   :init (progn
;; 	  (require 'auto-complete-config)
;; 	  (ac-config-default)
;; 	  (setq ac-auto-show-menu t)
;; 	  (setq ac-show-menu-immediately-on-auto-complete t)))

(req-package melp)

(req-package company
  :init (progn
	  (global-company-mode)))

(req-package magit
  :bind ("C-c g s" . magit-status))


(req-package rainbow-delimiters)
(req-package json-mode)
(req-package json-reformat)

(setq whitespace-action '(auto-cleanup))

(bind-key "C-c =w" 'whitespace-mode)

(setq next-line-add-newlines t)

(fset 'yes-or-no-p 'y-or-n-p)

(req-package helm
  :init
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
    (helm-mode))
  :bind (("C-c h" . helm-mini)
	 ("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)))

(req-package helm-descbinds
  :init
  (progn
    (require 'helm-descbinds)
    (helm-descbinds-mode)))

(req-package scheme-mode
  :mode "\\.scm\\'"
  :interpreter "petite")

(req-package smartparens
  :init
  (progn
    (require 'smartparens-config)
    (smartparens-global-mode t)
    (show-smartparens-global-mode t)))

(bind-key "C-M-f" 'sp-forward-sexp)
(bind-key "C-M-b" 'sp-backward-sexp)
(bind-key "C-M-n" 'sp-next-sexp)
(bind-key "C-M-p" 'sp-previous-sexp)
(bind-key "C-M-e" 'sp-up-sexp)
(bind-key "C-M-u" 'sp-backward-up-sexp)
(bind-key "C-M-d" 'sp-down-sexp)
(bind-key "C-M-a" 'sp-backward-down-sexp)
(bind-key "C-M-." 'sp-forward-slurp-sexp)
(bind-key "C-M-," 'sp-forward-barf-sexp)
(bind-key "M-S-." 'sp-backward-slurp-sexp)
(bind-key "M-S-," 'sp-backward-barf-sexp)



(provide 'init-exten)
