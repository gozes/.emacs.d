(req-package haskell-mode
  :init (progn
	   (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
	   (add-hook 'haskell-mode-hook 'flycheck-mode)
	   (add-hook 'haskell-mode-hook 'gozes-haskell-mode-guide-key-hook)
	   (custom-set-variables
	    '(haskell-process-suggest-remove-import-lines t)
	    '(haskell-process-auto-import-loaded-modules t)
	    '(haskell-process-log))))


(defun gozes-haskell-mode-guide-key-hook ()
  (guide-key/add-local-guide-key-sequence "C-")
  (guide-key/add-local-highlight-command-regexp "haskell-"))

(bind-key "C-," 'haskell-move-nested-left haskell-mode-map)
(bind-key "C-." 'haskell-move-nested-right haskell-mode-map)
(bind-key "C-x a r" 'aling-regexp)

