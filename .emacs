;; directory_setting
(let ((default-directory (expand-file-name "~/.dotfiles/.emacs.d/elisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.dotfiles/.emacs.d/inits")

;; set_language_japanese
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(setq file-name-coding-system 'utf-8)

;; behaviors
(setq mouse-yank-at-point t)
(setq inhibit-startup-message t)
(setq next-line-add-newlines nil)
(show-paren-mode)

;; keys
(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-xc" 'compile)

;; others(in_app_settings)
