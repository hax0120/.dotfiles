;; anything
(global-set-key "¥M-a¥M-n" 'anything-start)

;; delete
(global-set-key "¥C-h" 'delete-backward-char)

;; compile
(global-set-key "¥M-c" 'compile)

;; AC
(define-key ac-complete-mode-map "¥C-n" 'ac-next)
(define-key ac-complete-mode-map "¥C-p" 'ac-previous)
(global-set-key "¥M-/" 'ac-start)

;; Open shell
(global-set-key "¥C-c¥C-t" 'shell)

;; Reload
(global-set-key "¥C-c¥C-r" 'load-file "~/.emacs")
