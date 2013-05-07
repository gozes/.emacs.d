(menu-bar-mode -1)

(toggle-scroll-bar -1)

(tool-bar-mode -1) 

(require 'package)
  (package-initialize)
(add-to-list 'package-archives 
 '("melpa" . "http://melpa.milkbox.net/packages/") t)
