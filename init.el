(menu-bar-mode -1)

(toggle-scroll-bar -1)

(tool-bar-mode -1) 

(global-linum-mode t)

(require 'package)
  (package-initialize)
(add-to-list 'package-archives 
 '("melpa" . "http://melpa.milkbox.net/packages/") t)
(load-theme 'solarized-light t)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(load setup-ac-mode)

