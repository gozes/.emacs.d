(req-package phoenix-dark-pink-theme
  :disabled t
  :init (load-theme 'phoenix-dark-pink t))

(req-package cyberpunk-theme
  :init (load-theme 'cyberpunk t))

(req-package moe-theme
  :disabled t
  :init (progn
	  (load-theme 'moe-dark t)))

(req-package sublime-themes
  :disabled t
  :init (load-theme 'brin t))    

(req-package spacemacs-theme
  :disabled t
  :init (load-theme 'spacemacs-dark t))

(req-package afternoon-theme
  :disabled t
  :init (load-theme 'afternoon t))

(menu-bar-mode -1)

(toggle-scroll-bar -1)

(tool-bar-mode -1)

(global-linum-mode t)

(visual-line-mode t)

(provide 'init-looks)
