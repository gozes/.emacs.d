(defun gozes-init-archive-if-empty ()
  (if (null package-archive-contents)
      (progn
	(package-initialize)
	(package-refresh-contents)
	package-archive-contents)
    package-archive-contents))


(defun gozes-bootstrap-config ()
  (gozes-init-archive-if-empty)
  (if (null (require 'req-package "req-package" t))
      (progn (package-install 'req-package)
	     (require 'req-package))))

(gozes-bootstrap-config)

(add-to-list 'load-path (concat user-emacs-directory "lisp"))


(use-package load-dir
  :ensure load-dir
  :init (load-dir-one (concat user-emacs-directory "gozes")))


(req-package-finish)


