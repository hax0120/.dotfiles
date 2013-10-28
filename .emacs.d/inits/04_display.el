;; Cmd_enable
(custom-set-variables
 '(cua-mode t nil (cua-base))
 '(show-paren-mode t))
(custom-set-faces )

;; indent
(setq c-auto-newline t)
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
(setq c-basic-offset 4)
(setq next-line-add-newlines nil)
(setq c-default-style
'((java-mode . "java") (other . "linux")))

;; color
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(set-background-color "Black")
(set-foreground-color "AntiqueWhite2")
(set-cursor-color "Red")

;; toolbar
(custom-set-variables
 '(cua-mode t nil (cua-base))
 '(menu-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))

