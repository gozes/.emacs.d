(when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
  (tooltip-mode -1))



(require 'package)
(dolist (repo '(("melpa" . "https://melpa.org/packages/")
		("org" . "http://orgmode.org/elpa/")))
  (add-to-list 'package-archives repo))

(package-initialize)


(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package diminish
  :ensure t)

(eval-when-compile
  (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)




(org-babel-load-file (concat user-emacs-directory "config.org"))


