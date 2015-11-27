(use-package phoenix-dark-pink-theme
  :disabled t
  :ensure t
  :init (load-theme 'phoenix-dark-pink t))

(use-package cyberpunk-theme
  :ensure t
  :init (load-theme 'cyberpunk t))

(use-package moe-theme
  :disabled t
  :ensure t
  :init (progn
	  (load-theme 'moe-dark t)))

(use-package sublime-themes
  :disabled t
  :ensure t
  :init (load-theme 'brin t))    

(use-package spacemacs-theme
  :disabled t
  :ensure t
  :init (load-theme 'spacemacs-dark t))

(use-package afternoon-theme
  :disabled t
  :ensure t
  :init (load-theme 'afternoon t))

(menu-bar-mode -1)

(toggle-scroll-bar -1)

(tool-bar-mode -1)

(global-linum-mode t)

(visual-line-mode t)

(provide 'init-looks)
