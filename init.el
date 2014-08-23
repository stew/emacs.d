(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)
(require 'ob-tangle)
(org-babel-load-file "~/.emacs.d/Stew.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(erc-modules
   (quote
    (autojoin button completion fill irccontrols list match menu move-to-prompt netsplit networks noncommands notifications readonly ring stamp track)))
 '(erc-nick "stew")
 '(erc-port 9999)
 '(erc-server "loach.vireo.org")
 '(erc-track-exclude-types
   (quote
    ("JOIN" "KICK" "NICK" "PART" "QUIT" "MODE" "333" "353")))
 '(exec-path
   (quote
    ("/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin" "~/bin")))
 '(gh-profile-alist
   (quote
    (("github" :url "https://api.github.com" :username "stew" :password "J6FCeNbs"))))
 '(haskell-font-lock-symbols t)
 '(haskell-mode-hook
   (quote
    (turn-on-eldoc-mode turn-on-haskell-decl-scan turn-on-haskell-doc turn-on-haskell-indentation)))
 '(idris-interpreter-path "/Users/stew/.cabal/bin/idris")
 '(indent-tabs-mode t)
 '(notmuch-hello-thousands-separator ",")
 '(notmuch-saved-searches
   (quote
    (("inbox" . "tag:inbox")
     ("unread" . "tag:unread")
     ("inbox+unread" . "tag:inbox and tag:unread")
     ("cody" . "from:cody")
     ("cody+unread" . "from:cody and tag:unread"))))
 '(notmuch-search-oldest-first nil)
 '(notmuch-show-all-multipart/alternative-parts nil)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-protocol org-rmail org-w3m org-drill org-git-link)))
 '(send-mail-function (quote sendmail-send-it))
 '(show-paren-mode t)
 '(split-width-threshold 200)
 '(starttls-extra-arguments (quote ("--insecure")))
 '(tool-bar-mode nil)
 '(znc-servers
   (quote
    (("loach.vireo.org" 9999 t
      ((chat\.freenode\.net "stew" "bianchirb1")))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ensime-compile-errline ((t (:foreground "#ff5556")))))
(put 'narrow-to-region 'disabled nil)
