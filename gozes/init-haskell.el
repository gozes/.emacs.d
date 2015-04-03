(req-package haskell-mode
  :defer t
  :config
  (progn
    (add-hook 'haskell-mode-hook (lambda () (ghc-init)))
    (add-to-list 'company-backends 'company-ghc)
    (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
    (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
    (custom-set-variables
     '(haskell-process-suggest-remove-import-lines t)
     '(haskell-process-auto-import-loaded-modules t)
     '(haskell-process-log t))))

;; (req-package shm
;;   :defer t)

(req-package company-ghc
  :defer t)

(req-package ghc
  :defer t)










