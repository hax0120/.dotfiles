;; behaviors
(global-font-lock-mode t)
(setq mouse-yank-at-point t)
(setq inhibit-startup-message t)
(setq next-line-add-newlines nil)
(show-paren-mode)
(setq completion-ignore-case t)
(global-auto-revert-mode 1)
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)

;;; バックアップファイルを作らない
(setq backup-inhibited t)

;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;;; gzファイルも編集できるようにする
(auto-compression-mode t)

;; 現在の関数の表示
(which-function-mode 1)

;; spelcheck
(setq-default flyspell-mode t)
(setq ispell-dictionary "american")

;; C_setting
(add-hook
 'c-mode-common-hook
 (lambda ()
   ;; BSDスタイルをベースにする
   (c-set-style "bsd")

   ;; スペースでインデントをする
   (setq indent-tabs-mode nil)

   ;; インデント幅を2にする
   (setq c-basic-offset 2)

   ;; 自動改行（auto-new-line）と
   ;; 連続する空白の一括削除（hungry-delete）を
   ;; 有効にする
   (c-toggle-auto-hungry-state 1)

   ;; CamelCaseの語でも単語単位に分解して編集する
   ;; GtkWindow         => Gtk Window
   ;; EmacsFrameClass   => Emacs Frame Class
   ;; NSGraphicsContext => NS Graphics Context
   (subword-mode 1)))

;; reconf
(when (require 'recentf nil t)
  (setq recentf-max-saved-items 2000)
  (setq recentf-exclude '(".recentf"))
  (setq recentf-auto-cleanup 10)
  (setq recentf-auto-save-timer
        (run-with-idle-timer 30 t 'recentf-save-list))
  (recentf-mode 1)
  (require 'recentf-ext))

;; 関数定義の表示
(add-hook 'emacs-lisp-mode-hook '(lambda () (require 'eldoc-extension) (eldoc-mode t) ))

;; buffer
(iswitchb-mode t)
(iswitchb-default-keybindings)

;; server
(if window-system (server-start))





