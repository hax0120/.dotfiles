;; AC
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.dotfiles/.emacs.d/elisp/ac-dict")
(ac-config-default)

;; Auto_install
(require 'auto-install)
(add-to-list 'load-path  auto-install-directory)
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)

;; Markdown
(require 'markdown-mode)
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

;; Package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Anything
(require 'anything)
(require 'anything-config)
(add-to-list 'anything-sources 'anything-c-source-emacs-commands)
(global-set-key "\C-x\C-b" 'anything)

