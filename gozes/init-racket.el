
(req-package racket-mode
  :defer t
  :config (progn
	  (setq racket-program "/usr/bin/racket")
	  (setq reco-program "/usr/bin/raco")
	  (add-to-list 'auto-mode-alist '("\\.rkt\\'" . racket-mode))))


