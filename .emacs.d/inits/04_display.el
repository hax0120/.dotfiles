;; Cmd_enable
(custom-set-variables
 '(cua-mode t nil (cua-base))
 '(show-paren-mode t))
(custom-set-faces )

;; indent
(setq c-auto-newline t)
(setq-default tab-width 4)
(setq c-basic-offset 4)
(setq next-line-add-newlines nil)
(setq c-default-style
'((java-mode . "java") (other . "bsd")))

;; color
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; toolbar
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
