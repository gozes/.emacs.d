(menu-bar-mode -1)

(toggle-scroll-bar -1)

(tool-bar-mode -1) 

(global-linum-mode t)

;; enables ido-mode everyware
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(load-theme 'solarized-light t)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; set up lode path for other config
(add-to-list 'load-path user-emacs-directory)
(load "setup-ac-mode")
(load "setup-packages)
