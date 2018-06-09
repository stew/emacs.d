(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(require 'ob-tangle)
(org-babel-load-file "~/.emacs.d/Stew.org")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(bibtex-field-indentation 4)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("55d31108a7dc4a268a1432cd60a7558824223684afecefa6fae327212c40f8d3" default)))
 '(dired-dwim-target t)
 '(ediff-window-setup-function (quote ediff-setup-windows-multiframe))
 '(ensime-graphical-tooltips t)
 '(exec-path
   (quote
    ("/nix/var/nix/profiles/default/bin" "~/.nix-profile/bin" "/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin" "~/bin")))
 '(git-link-remote-alist
   (quote
    (("github" git-link-github)
     ("bitbucket" git-link-bitbucket)
     ("gitorious" git-link-gitorious)
     ("gitlab" git-link-gitlab)
     ("gh" git-link-github)
     ("git" git-link-github)
     ("tgt" git-link-tgt))))
 '(global-linum-mode t)
 '(grep-find-ignored-directories
   (quote
    ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" ".ensime_cache" "target")))
 '(haskell-ask-also-kill-buffers nil)
 '(haskell-font-lock-symbols t)
 '(haskell-interactive-popup-errors nil)
 '(haskell-mode-hook
   (quote
    (turn-on-eldoc-mode turn-on-haskell-decl-scan turn-on-haskell-doc turn-on-haskell-indentation)))
 '(haskell-process-type (quote stack-ghci))
 '(indent-tabs-mode nil)
 '(ispell-program-name "aspell")
 '(jdee-server-dir "~/src/jdee-server/target")
 '(line-move-visual nil)
 '(menu-bar-mode nil)
 '(nil nil t)
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
 '(nxml-child-indent 4)
 '(org-agenda-custom-commands
   (quote
    (("n" "Agenda and all TODO's"
      ((agenda "" nil)
       (alltodo "" nil))
      nil)
     ("x" "stew's agenda" tags "NOW" nil))))
 '(org-babel-load-languages (quote ((sh . t) (awk . t) (emacs-lisp . t))))
 '(org-confirm-babel-evaluate nil)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-protocol)))
 '(package-selected-packages
   (quote
    (lua-mode cargo company-racer racer racer-mode ido-completing-read+ ido-ubiquitous powerline exec-path-from-shell flycheck flycheck-mode nix-mode nix-buffer haskell-mode pretty-mode ivy ensime cider git-gutter+ jdee counsel znc yaml-mode use-package twittering-mode smex scala-mode2 rust-mode paredit org-jira multiple-cursors markdown-mode magit key-chord json-mode intero hydra helm-projectile helm-grepint helm-git-grep hcl-mode golint go-eldoc go-autocomplete flymake-rust confluence avy autumn-light-theme ansible ace-jump-mode)))
 '(python-indent-offset 2)
 '(racer-rust-src-path "~/src/rust/src")
 '(rust-cargo-bin "~/.nix-profile/bin/cargo")
 '(safe-local-variable-values
   (quote
    ((dante-target . "new-elab")
     (dante-target . "tgt-api")
     (dante-target . "bale")
     (dante-target . "tgt-data")
     (dante-target . "hmach")
     (dante-target . "tgt-elab"))))
 '(sbt:program-name
   "/Users/stew.oconnor/.sdkman/candidates/sbt/current/bin/sbt")
 '(scala-indent:add-space-for-scaladoc-asterisk nil)
 '(scala-indent:align-parameters t)
 '(scala-indent:use-javadoc-style t)
 '(send-mail-function (quote sendmail-send-it))
 '(show-paren-mode t)
 '(split-width-threshold 200)
 '(starttls-extra-arguments (quote ("--insecure")))
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(twittering-username "stewoconnor")
 '(yas-snippet-dirs (quote ("~/.emacs.d/snippets"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(col-highlight ((t (:background "gray5"))))
 '(ensime-implicit-highlight ((t (:underline nil :slant italic))))
 '(vline-visual ((t (:background "gray2")))))
