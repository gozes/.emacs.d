;; (require 'erc)
;; (require 'creds)
;; (require 'erc-services)

;; (setq erc-modules '(autojoin nickserv button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands readonly ring scrolltobottom stamp track))
;; (erc-update-modules)

;; (defvar irc-nick (car gozes-irc-nicks))
;; (setq erc-nickserv-passwords '((freenode ((irc-nick . gozes-freenode-irc-password)))))

;; (erc-services-mode 1)

;; (setq erc-prompt-for-nickserv-password nil)

;; (setq erc-mode-line-format "%t")

;; (erc-spelling-mode 1)

;; (setq erc-hide-list '("JOIN" "PART" "QUIT" "NICK"))

;; (setq erc-autojoin-timing 'ident)

;; (setq erc-autojoin-channels-alist '(( "freenode.net" "#corelan" "##re" "#kali-linux" "#metasploit" "#emacs" "#org-mode")))

;; (add-hook 'erc-mode-hook
;; 	  (lambda ()
;; 	    (define-key erc-mode-map (kbd "RET") nil)
;; 	    (define-key erc-mode-map (kbd "C-c RET") 'erc-send-current-line)
;; 	    (define-key erc-mode-map (kbd "C-c C-RET") 'erc-send-current-line)))

;; (provide 'init-erc)
