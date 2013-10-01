(setq org-directory "~/Dropbox/Org")
(setq org-default-note-file  "~/Dropbox/Org/orgaanizer.org")

(setq org-reverse-note-order t)
(setq org-refile-targets
      '(("~/Dropbox/Org/orgaanizer.org" . (:maxlevel . 4))
        ("~/Dropbox/Org/books.org" . (:maxlevel . 4))
        ("~/Dropbox/Org/build.org" . (:maxlevel . 4))
        ("~/Dropbox/Org/blog.org" . (:maxlevel . 4))))

(setq org-agenda-files '("~/Dropbox/Org/orgaanizer.org"
                         "~/Dropbox/Org/books.org"
                         "~/Dropbox/Org/build.org"
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
          :Added On:%t
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
      '(("o" todo "TODO")
        ("w" "Waiting for" todo "WAITING")
        ("b" todo ""
         (org-agenda-files '("~/Dropbox/Org/build.org")))
        ("d" "Deferred Task" todo "DEFERRED")))


(provide 'init-org-mode)
