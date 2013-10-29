;; reconf
(require 'recentf)
(setq recentf-max-saved-items 10000)
(setq recentf-auto-cleanup 20)
(recentf-mode 1)

;; elisp
(require 'install-elisp)
(setq install-elisp-repository-directory 'load-path)

;; server
(require 'server)
(unless (server-running-p)
  (server-start))

;; AC
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.dotfiles/.emacs.d/elisp/ac-dict")
(ac-config-default)

;; Auto_install
;(require 'auto-install)
;(add-to-list 'load-path  auto-install-directory)
;(auto-install-update-emacswiki-package-name t)
;(auto-install-compatibility-setup)

;; Markdown
(require 'markdown-mode)
(setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.mkdn" . markdown-mode) auto-mode-alist))

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

;; Path
(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; org-mode
(require 'org)
;; キーバインドの設定
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(define-key global-map "\C-cr" 'org-remember)
;; 拡張子がorgのファイルを開いた時，自動的にorg-modeにする
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; org-modeでの強調表示を可能にする
(add-hook 'org-mode-hook 'turn-on-font-lock)
;; 見出しの余分な*を消す
(setq org-hide-leading-stars t)
;; org-default-notes-fileのディレクトリ
(setq org-directory "~/org/")
;; org-default-notes-fileのファイル名
(setq org-default-notes-file "notes.org")

;; auto-async-byte-compile
(require 'auto-async-byte-compile)
(setq auto-async-byte-compile-exclude-files-regexp "/junk/")
(add-hook 'emacs-lisp-mode-hook 'enable-auto-async-byte-compile-mode)

;; rainbow
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; quickrun
(require 'quickrun)
(global-set-key "\C-c\C-q" 'quickrun)
(global-set-key "\C-c\C-i" 'indent-region)
