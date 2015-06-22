(defun backward-n-args (arg)
  "in a comma separated list of arguments, this will move backward n arguments"
  (if (> arg 0)
      (progn
	(skip-chars-backward " \n\t,")
	(re-search-backward "[(,]" nil 'move)
	(skip-chars-forward "( ,\n\t")
	(forward-n-args (- arg 1)))))

(defun forward-n-args (arg)
  "in a comma separated list of arguments, this will move forward n arguments"
  (if (> arg 0)
    (progn
      (re-search-forward "[,)]" nil 'move)
      (skip-chars-backward ")")
      (skip-chars-forward ", \n\t")
      (forward-n-args (- arg 1))
      )))

(defun forward-arg (arg)
  "in a comma separated list of arguments, this will move forward one argument"
  (interactive "^p")
  (cond
   ((< arg 0) (backward-n-args (- 0 arg)))
   ((> arg 0) (forward-n-args arg))))

(defun current-arg ()
  (let* ((beg (point))
	 (end (save-excursion
		(forward-n-args 1)
		(skip-chars-backward ", \n\t")
		(point))))
    (cons beg end)))

(defun len-tup (tup)
  (- (cdr tup) (car tup)))

(defun transpose-args2 ()
  (interactive)
  (atomic-change-group
    (let*
	((b1 (make-marker))
	 (b2 (make-marker))
	 (be1 (current-arg))
	 (be2 (save-excursion
		(backward-n-args 1)
		(current-arg)))
	 (le1 (len-tup be1))
	 (le2 (len-tup be2))
	 (arg2 (buffer-substring (car be2) (cdr be2)))
	 (arg1 (delete-and-extract-region (car be1) (cdr be1))))
      (message "be1: %s" be1)
      (message "be2: %s" be2)
      (set-marker b1 (car be1))
      (set-marker b2 (car be2))
      (goto-char b2)
      (insert-before-markers arg1)
      (goto-char b2)
      (delete-region (point) (+ (point) le2))
      (goto-char b1)
      (insert arg2))))

(defun transpose-args (arg)
  "in a comma separated list of arguments, this will transpose two arguments"
  (interactive "*P")
  (push-mark (point))
  (forward-n-args 1)
  (skip-chars-backward ", \n\t")
  (kill-region (region-beginning) (region-end))
  (backward-n-args 1)
  (yank)
  (push-mark (point))
  (forward-n-args 1)
  (skip-chars-backward ", \n\t")
  (kill-region (region-beginning) (region-end))
  (skip-chars-forward ", \n\t")
  (yank))

(defun transpose-arg (arg)
  (interactive "*P")
  (transpose-subr 'forward-word (prefix-numeric-value arg)))


(defun play-with-excursion ()
  (interactive)
  (let* ((b1 (point))
	 (e1 (save-excursion (forward-word)
			     (point))))
    (message "%s - %s" b1 e1)
    (kill-region b1 e1)))
  
