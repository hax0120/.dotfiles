;; setting
(global-font-lock-mode t)
(setq mouse-yank-at-point t)
(setq inhibit-startup-message t)
(setq next-line-add-newlines nil)
(show-paren-mode)
(setq completion-ignore-case t)
(global-auto-revert-mode 1)
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)
(global-linum-mode)

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

;; onC
(add-hook 'c-mode-common-hook
          '(lambda ()
             ;; flyspell-prog-mode をオンにする
             (flyspell-prog-mode)
))
