(req-package cider
  :init
  (progn    
    (add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
    (setq cider-repl-pop-to-buffer-on-connect nil)
    (setq cider-show-error-buffer nil)
    (setq cider-repl-display-in-current-window t)
    (setq cider-repl-result-prefix ";; => ")
    (add-hook 'cider-repl-mode-hook 'smartparens-strict-mode)
    (add-hook 'cider-mode-hook 'smartparens-strict-mode)))
