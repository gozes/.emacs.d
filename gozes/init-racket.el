(req-package racket-mode
  :bind ("C-c r" . racket-run)
  :init (progn
	  (setq racket-program "/usr/bin/racket")
	  (setq reco-program "/usr/bin/reco")
	  (add-hook 'racket-mode-hook 'gozes-racket-mode-guide-key-hook)))



(defun gozes-racket-mode-guide-key-hook ()
  (guide-key/add-local-guide-key-sequence "C-c")
  (guide-key/add-local-highlight-command-regexp "racket-"))
