;; (req-package phoenix-dark-pink-theme
;;   :init (load-theme 'phoenix-dark-pink t))

;; (req-package cyberpunk-theme
;;   :init (load-theme 'cyberpunk t))

;; (req-package moe-theme
;;   :init (load-theme 'moe-dark t))

(req-package emacs-color-themes
  :init (load-theme 'Brin t))    

(menu-bar-mode -1)

(toggle-scroll-bar -1)

(tool-bar-mode -1)

(global-linum-mode t)

(visual-line-mode t)

(provide 'init-looks)
