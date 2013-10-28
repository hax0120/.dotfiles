;; keys
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-xc" 'compile)

;; mouse
(if window-system (progn
(global-unset-key [down-mouse-3])

(defun bingalls-edit-menu (event)
  (interactive "e")
  (popup-menu menu-bar-edit-menu))
(global-set-key [mouse-3] 'bingalls-edit-menu)
))

;; AC
(setq ac-dir "auto-complete-1.3/")
(add-to-list 'load-path ac-dir)
(require 'auto-complete-config)
(ac-config-default)

(add-to-list 'ac-dictionary-directories (concat ac-dir "ac-dict/"))
(global-set-key "\M-/" 'ac-start)

(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
(define-key global-map "\C-c\C-t" 'shell)

;; indent
(setq c-auto-newline t)
(setq-default tab-width 4)
(setq c-basic-offset 4)
(setq next-line-add-newlines nil)
(setq c-default-style
'((java-mode . "java") (other . "bsd")))



;; others(in_app_settings)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
