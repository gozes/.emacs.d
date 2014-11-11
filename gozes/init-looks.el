;; (req-package phoenix-dark-pink-theme
;;   :init (load-theme 'phoenix-dark-pink t))

(req-package cyberpunk-theme
  :init (load-theme 'cyberpunk t))

(menu-bar-mode -1)

(toggle-scroll-bar -1)


(tool-bar-mode -1)

(global-linum-mode t)

(req-package rich-minority-mode
  :init
  (progn
    (rich-minority-mode 1)))


(provide 'init-looks)
