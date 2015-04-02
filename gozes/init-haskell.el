(req-package haskell-mode
  :defer t
  :config
  (progn
    (add-hook 'haskell-mode-hook (lambda () (ghc-init)))
    (add-to-list 'company-backends 'company-ghc)
    ))

;; (req-package shm
;;   :defer t)

(req-package company-ghc
  :defer t)

(req-package ghc
  :defer t)










