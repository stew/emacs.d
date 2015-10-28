(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)


; list the packages you want
(setq package-list '(projectile git-link smex multiple-cursors key-chord git-gutter scala-mode2 ensime idris-mode org-jira confluence notmuch notmuch-labeler znc magit))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

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
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
