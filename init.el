(menu-bar-mode -1)

(toggle-scroll-bar -1)

(tool-bar-mode -1) 

(global-linum-mode t)

;; set up lode path for other config
(add-to-list 'load-path user-emacs-directory)
(load "setup-packages")
(load "setup-ac-mode")
(load "setup-ruby-mode")

;; loads my prefer theme
(load-theme 'phoenix-dark-pink t)

;; enables ido-mode everyware
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))


;; org-mode keybindes for  learing org MOVE LATER check this http://blog.zenspider.com/blog/2013/06/my-emacs-setup-hooks.html
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/Code/Projeces/org-mode-test/org.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
