
(req-package racket-mode
  :init (progn
	  (setq racket-program "/usr/bin/racket")
	  (setq reco-program "/usr/bin/raco")
	  (add-to-list 'auto-mode-alist '("\\.rkt\\'" . racket-mode))))


