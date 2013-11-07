;; Org-mode global keybinds
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cr" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; ERC  Keybinds
(global-set-key "\C-cef" (lambda () (interactive)
			   (require 'creds)
			   (erc :server "irc.freenode.net" :port "6667" :nick "gozes" :password gozes-freenode-irc-password)))

;; magit
(global-set-key "\C-c \C-g" 'magit-status)

(provide 'init-keybinds)
