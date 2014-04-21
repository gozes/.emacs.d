;; Org-mode global keybinds
(bind-key "C-c l" 'org-store-link)
(bind-key "C-c r" 'org-capture)
(bind-key "C-c a" 'org-agenda)
(bind-key "C-c b" 'org-iswitchb)

;; ERC  Keybinds
(bind-key "C-c e f"
					(lambda () (interactive)
						(require 'creds)
						(erc :server "irc.freenode.net" :port "6667" :nick "gozes" :password gozes-freenode-irc-password)))



(provide 'init-keybinds)
