(req-package rcirc
  :bind ("C-c C-a t" . rcirc)
  :init (progn
	  (require 'gozes-creds)
	  (setq rcirc-omit-responses '("JOIN" "PART" "QUIT" "NICK" "AWAY"))
	  (add-hook 'rcirc-mode-hook 'rcirc-omit-mode))
  :config (progn	   
	    (add-to-list 'rcirc-server-alist
		       '("irc.freenode.net"
			 :channels ("#emacs" "#clojure")
			 :port 6697
			 :encryption tls))))
