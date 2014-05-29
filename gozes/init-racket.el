(req-package geiser
  :bind ("C-c r" . run-racket)
  :init (progn
	  (add-hook 'geiser-mode-hook 'gozes-geiser-guide-key-hook)))

(defun gozes-geiser-guide-key-hook ()
  (guide-key/add-local-guide-key-sequence "C-c")
  (guide-key/add-local-highlight-command-regexp "geiser-"))






;; (req-package racket-mode
;;   :bind ("C-c r" . racket-run)
;;   :init (progn
;; 	  (setq racket-program "/usr/bin/racket")
;; 	  (setq reco-program "/usr/bin/raco")
;; 	  (add-hook 'racket-mode-hook 'gozes-racket-mode-guide-key-hook)
;; 	  (add-hook 'racket-mode-hook 'rainbow-delimiters-mode)))



;; (defun gozes-racket-mode-guide-key-hook ()
;;   (guide-key/add-local-guide-key-sequence "C-c")
;;   (guide-key/add-local-highlight-command-regexp "racket-"))
