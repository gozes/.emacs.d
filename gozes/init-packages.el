(require 'package)

(dolist (repo '(("melpa" . "http://melpa.milkbox.net/packages/")
                ("marmalade" . "http://marmalade-repo.org/packages/")
                ("elpa" . "http://tromey.com/elpa/")
		("org" . "http://orgmode.org/elpa/")))
  (add-to-list 'package-archives repo))

(defun gozes-package-refresh-and-install (name)
  "Ensure we have a fresh package list, then install."
  (package-refresh-contents)
  (package-install name))

(defun gozes-package-install-unless-installed (name)
  "Install a package by name unless it is already installed."
  (or (package-installed-p name) (gozes-package-refresh-and-install name)))

(defun gozes-package-version-for (package)
  "Get the version of a loaded package."
  (package-desc-vers (cdr (assoc package package-alist))))

(defun gozes-package-delete-by-name (package)
  "Remove a package by name."
  (package-delete (symbol-name package)
                  (package-version-join (gozes-package-version-for package))))

(defun gozes-package-delete-unless-listed (packages)
  "Remove packages not explicitly declared."
  (dolist (package (mapcar 'car package-alist))
    (unless (memq package packages) (gozes-package-delete-by-name package))))

(defun gozes-package-install-and-remove-to-match-list (&rest packages)
  "Sync packages so the installed list matches the passed list."
  (package-initialize)
  (condition-case nil ;; added to handle no-network situations
      (mapc 'gozes-package-install-unless-installed packages)
    (error (message "Couldn't install package. No network connection?")))
  (gozes-package-delete-unless-listed packages))

(gozes-package-install-and-remove-to-match-list
 'melpa
 'popup
 'auto-complete
 'phoenix-dark-pink-theme
 'phoenix-dark-mono-theme
 'orglue
 'ctable
 'epic
 'org-mac-link
 'htmlize
 'org-octopress
 'org
 'ruby-end
 )


(provide 'init-packages)
