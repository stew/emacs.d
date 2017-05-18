(defun current-cats (module)
  (replace-regexp-in-string
   "\n$" "" 
   (shell-command-to-string "curl -sk https://api.github.com/repos/typelevel/cats/releases | /Users/v724000/.nix-profile/bin/jq --raw-output '.[0].tag_name' | sed 's/^v\\(.*\\)$/\"org.typelevel\" %% \"cats-core\" % \"\\1\"/'")))

(defun cats-core ()
  (interactive)
  (insert-string (current-cats "core")))
  

