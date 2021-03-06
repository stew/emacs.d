(defun toggle-window-split ()
                                        ; i think i stole this from rcy, but changed it so that running it twice
                                        ; has the effect of flipping buffers
  (interactive)
  (if (= (count-windows) 2)
      (let* ((this-win-buffer (window-buffer))
             (next-win-buffer (window-buffer (next-window)))
             (this-win-edges (window-edges (selected-window)))
             (next-win-edges (window-edges (next-window)))
             (this-win-2nd (not (and  (<= (car this-win-edges)
                                         (car next-win-edges))
                                     (<= (cadr this-win-edges)
                                         (cadr next-win-edges)))))
             (splitter
              (if (= (car this-win-edges)
                     (car (window-edges (next-window))))
                  'split-window-horizontally
                'split-window-vertically)))
        (delete-other-windows)
        (let ((first-win (selected-window)))
          (funcall splitter)
          (if (not this-win-2nd) (other-window 1))
          (if (= (car this-win-edges)
                 (car (window-edges (next-window))))
              (progn
                (set-window-buffer (selected-window) this-win-buffer)
                (set-window-buffer (next-window) next-win-buffer))
            (progn
              (set-window-buffer (selected-window) next-win-buffer)
              (set-window-buffer (next-window) this-win-buffer)))
          (if this-win-2nd
              (progn (setq stew t)
              (select-window next-win))
            (progn (setq stew nil) (select-window this-win)))
;          (if (not this-win-2nd) (other-window 1))
                                        ;      (other-window 1)

          ))))

(global-set-key (kbd "C-x /") 'toggle-window-split)

(provide 'rotatesplit)
