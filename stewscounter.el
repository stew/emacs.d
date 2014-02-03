; I find this useful when writing macros

(defun set-stews-counter (newcount)
  (interactive)
  (setq stews-counter newcount))

(defun next-stews-counter()
  (interactive)
    (insert-before-markers (number-to-string stews-counter))
  (setq stews-counter (+ 1 stews-counter)))

(defun reset-stews-counter()
  (interactive)
  (set-stews-counter 0))

(reset-stews-counter)

(global-set-key "\M-N" 'next-stews-counter)
(global-set-key "\M-M" 'reset-stews-counter)

(provide 'stewscounter)
