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
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
 '(bibtex-field-indentation 4)
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("55d31108a7dc4a268a1432cd60a7558824223684afecefa6fae327212c40f8d3" default)))
 '(dired-dwim-target t)
 '(direnv-mode t nil (direnv))
 '(ediff-window-setup-function (quote ediff-setup-windows-multiframe) t)
 '(ensime-graphical-tooltips t)
 '(exec-path
   (quote
    ("/nix/var/nix/profiles/default/bin" "~/.nix-profile/bin" "/usr/local/bin" "/usr/bin" "/bin" "/usr/sbin" "/sbin" "/Applications/Emacs.app/Contents/MacOS/bin" "~/bin")))
 '(flymake-gui-warnings-enabled nil)
 '(git-link-remote-alist
   (quote
    (("github" git-link-github)
     ("bitbucket" git-link-bitbucket)
     ("gitorious" git-link-gitorious)
     ("gitlab" git-link-gitlab)
     ("gh" git-link-github)
     ("git" git-link-github)
     ("tgt" git-link-tgt))))
 '(global-linum-mode nil)
 '(global-undo-tree-mode nil)
 '(grep-find-ignored-directories
   (quote
    ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" ".ensime_cache" "target")))
 '(groovy-indent-offset 2)
 '(haskell-ask-also-kill-buffers nil)
 '(haskell-compile-cabal-build-alt-command
   "cd %s && cabal clean -s && cabal new-build --ghc-option=-ferror-spans")
 '(haskell-compile-cabal-build-command "cd %s && cabal new-build --ghc-option=-ferror-spans")
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
 '(lsp-ui-doc-enable t)
 '(lsp-ui-doc-use-childframe nil)
 '(lsp-ui-flycheck-live-reporting nil)
 '(lsp-ui-imenu-enable nil)
 '(lsp-ui-peek-enable nil)
 '(lsp-ui-sideline-enable nil)
 '(magithub-github-hosts (quote ("github.com" "git.target.com")))
 '(menu-bar-mode nil)
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
 '(org-agenda-files
   (quote
    ("~/OneDrive - Target Corporation/target.org" "~/Desktop/annex/org/misc.org" "~/Desktop/annex/org/.org")))
 '(org-babel-load-languages (quote ((sh . t) (awk . t) (emacs-lisp . t))))
 '(org-confirm-babel-evaluate nil)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-protocol)))
 '(package-selected-packages
   (quote
    (ace-jump-mode ansible avy cargo company company-lsp company-racer dante direnv exec-path-from-shell flycheck flycheck-mode flycheck-rust flymake-rust git-gutter+ groovy-mode haskell-mode hcl-mode hydra ido-completing-read+ ido-ubiquitous json-mode key-chord lsp-haskell lsp-mode lsp-python lsp-sh lsp-ui lua-mode magit magithub markdown-mode multiple-cursors mustache-mode neotree nix-mode paredit powerline projectile racer racer-mode rust-mode sbt-mode scala-mode scala-mode2 smex use-package which-key yaml-mode)))
 '(python-indent-offset 2)
 '(racer-rust-src-path "~/src/rust/src")
 '(ring-bell-function (quote ignore))
 '(rust-cargo-bin "~/.nix-profile/bin/cargo")
 '(safe-local-variable-values
   (quote
    ((dante-target . "first-mile-apis")
     (dante-target . "tgt-base")
     (dante-target . "new-pipeline")
     (dante-target . "first-mile-integration-cli")
     (haskell-process-type . cabal-new-repl)
     (dante-target . "new-elab")
     (dante-target . "tgt-api")
     (dante-target . "bale")
     (dante-target . "tgt-data")
     (dante-target . "hmach")
     (dante-target . "tgt-elab"))))
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
 '(undo-tree-visualizer-diff t)
 '(visible-bell t)
 '(yas-snippet-dirs (quote ("~/.emacs.d/snippets"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(col-highlight ((t (:background "gray5"))))
 '(ensime-implicit-highlight ((t (:underline nil :slant italic))))
 '(lsp-ui-doc-background ((t (:background "#878A86"))))
 '(lsp-ui-sideline-global ((t (:background "#225"))))
 '(vline-visual ((t (:background "gray2")))))
(put 'set-goal-column 'disabled nil)
