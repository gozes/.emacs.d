(flyspell-mode)

;; octopress setup
(require 'org-octopress)
(setq org-octopress-directory-top "~/.blog/source")
(setq org-octopress-directory-posts "~/.blog/source/_posts")
(setq org-octopress-directory-org-top "~/.blog/source")
(setq org-octopress-directory-org-posts "~/.blog/source/blog")
(setq org-octopress-setup-file "~/.blog/setupfile.org")
(add-hook 'org-mode-hook (lambda () (define-key org-mode-map (kbd"\C-c \C-o o") 'org-octopress-new-post)))
;(org-octopress)
;; ends octopress config


(setq org-directory "~/Dropbox/Org")
(setq org-default-note-file  "~/Dropbox/Org/orgaanizer.org")
(setq org-deadline-warning-days 4)

(defun gozes-org-agenda-skip-scheduled ()
  (org-agenda-skip-entry-if 'scheduled 'deadline
                            'regexp "\n]+>"))

(setq org-reverse-note-order t)
(setq org-refile-targets
      '(("~/Dropbox/Org/orgaanizer.org" . (:maxlevel . 2))
        ("~/Dropbox/Org/books.org" . (:maxlevel . 4))
        ("~/Dropbox/Org/build.org" . (:maxlevel . 4))
        ("~/Dropbox/Org/blog.org" . (:maxlevel . 4))
	("~/Dropbox/Org/appointments.org" . (:maxlevel . 2))))


(setq org-agenda-files '("~/Dropbox/Org/orgaanizer.org"
                         "~/Dropbox/Org/books.org"
                         "~/Dropbox/Org/build.org"
			 "~/Dropbox/Org/appointments.org"
                         "~/Dropbox/Org/blog.org"
                         "~/Dropbox/Org/routines.org"))

(setq org-todo-keywords
      '((sequence "TODO(t!)" "|" "DONE(d!)")
        (sequence "STARTED(s!)" "WAITING(w@/!)" "NEXT ACTION(n)" "|" "DEFERRED(f@)" )
        (sequence "|" "CANCELED(c@)")))


(setq org-tag-alist '(("@home" . ?h)
                      ("@uni" . ?u)
                      ("@errands" . ?e)
                      ("codeing" . ?c)
                      ("config" . ?f)))

(setq org-global-properties
      '(("Effort_ALL" . "0:05 0:15 0:30 1:00 2:00 3:00 4:00")))


(setq org-capture-templates
      '(("t" "Task" entry
         (file+headline "~/Dropbox/Org/orgaanizer.org" "Tasks")
         "* TODO %^{Task}  %^g 
          %?
          :PROPERTIES:
          :Effort: %^{effort|1:00|0:05|0:15|0:30|2:00|4:00}
          :END:")
        ("b" "Book" entry
         (file+headline "~/Dropbox/Org/books.org" "Inbox")
         "*  %^{Title}  %^g
%^?")
        ("o" "Open Loop" entry
         (file+headline "~/Dropbox/Org/orgaanizer.org" "Open Loop")
         "* WAITING %^{Wating}  %^g
%^?")
        ("s" "Someday" entry
         (file+headline "~/Dropbox/Org/orgaanizer.org" "Someday")
         "* DEFERRED %^{Title}  %^g
%^?")))



(setq org-agenda-custom-commands
      '(("o" todo "TODO"
	 ((org-agenda-skip-function 'gozes-org-agenda-skip-scheduled)))
        ("w" "Waiting for" todo "WAITING")
        ("b" todo ""
         (org-agenda-files '("~/Dropbox/Org/build.org")))
        ("d" "Deferred Task" todo "DEFERRED")))


(provide 'init-org-mode)
