;; autoinstall
(require 'auto-install)
(setq auto-install-directory "~/.dotfiles/.emacs.d/elisp/")
(auto-install-compatibility-setup)

;; anything
(require 'anything-startup)
(add-to-list 'anything-sources 'anything-c-source-emacs-commands)
(setq recentf-max-saved-items 1000)
(recentf-mode 2)

;; AC
(setq ac-dir "auto-complete-1.3/")
(add-to-list 'load-path ac-dir)
(require 'auto-complete-config)
(ac-config-default)

(add-to-list 'ac-dictionary-directories (concat ac-dir "ac-dict/"))


