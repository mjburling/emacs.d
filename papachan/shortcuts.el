;;; shortcuts.el file
;;
(require 'rg)
(require 'visual-regexp)

;; mac switch meta key
(defun mac-switch-meta nil
  "switch meta between Option and Command"
  (interactive)
  (setq mac-pass-command-to-system nil)
  (if (eq mac-option-modifier nil)
      (progn
	(setq mac-option-modifier 'meta)
	(setq mac-command-modifier 'hyper)
	)
    (progn
      (setq mac-option-modifier nil)
      (setq mac-command-modifier 'meta))))


;; (define-key key-translation-map [dead-circumflex] "^")
;; (define-key key-translation-map [dead-grave] "`")

(global-set-key (kbd "M-g y") (lambda () (interactive) (insert-into-buffer "~/tmp/gitconfig.txt")))
(global-set-key (kbd "M-g j") (lambda () (interactive) (insert-into-buffer "~/tmp/gitconfig1.txt")))

(global-set-key (kbd "C-.") 'other-window)
(global-set-key (kbd "C-,") (lambda() (interactive) (other-window -1)))
(global-set-key (kbd "M-g q") 'mark-sexp)
(global-set-key (kbd "M-g h") (lambda () (interactive) (insert "—")))
(global-set-key (kbd "M-g a") (lambda () (interactive) (insert "~")))
(global-set-key (kbd "M-g b") (lambda () (interactive) (insert "#")))
(global-set-key (kbd "C-x 8 ' n") (lambda () (interactive) (insert "ñ")))
(global-set-key (kbd "C-x <ESC> a") "α")
(global-set-key (kbd "C-x <ESC> b") "β")
(global-set-key (kbd "C-x <ESC> l") "λ")
(global-set-key (kbd "C-x 9") 'open-scratch-buffer)
(global-set-key (kbd "C-c C-o") 'delete-trailing-whitespace)
(global-set-key (kbd "C-c -") 'buffer/clear)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c >") 'my-indent-region)
(global-set-key (kbd "C-c <") 'my-unindent-region)
(global-set-key [pause] 'toggle-current-window-dedication)
(global-set-key (kbd "C-c C-j") 'replace-string)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "M-n") 'er/mark-word)
;; (global-set-key (kbd "s--") 'er/contract-region)
(global-set-key (kbd "C-d") 'mc/mark-next-like-this)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x j") 'json-pretty-print-buffer)
(global-set-key (kbd "C-c C-n") 'new-empty-buffer)
(global-set-key (kbd "C-c C-d") 'put-the-date)
(global-set-key (kbd "C-c w") 'select-whole-line)
(global-set-key (kbd "C-x q") 'shutdown-emacs)
(global-set-key (kbd "C-c o") 'insert-a-blank-line)
(global-set-key (kbd "C-c d") 'kill-whole-line)
(global-set-key (kbd "C-c m") 'magit-status)
(global-set-key (kbd "M-H") 'common-lisp-hyperspec)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)
(global-set-key (kbd "C-x C-c") 'quit-emacs)
(global-set-key (kbd "C-c f") 'follow-mode)
(global-set-key (kbd "C-x C-m") 'compile)
(global-set-key (kbd "C-x p") 'previous-multiframe-window)
(global-set-key (kbd "C-x 3") 'split-window-right-and-move-there-dammit)
(global-set-key (kbd "C-x 6") 'twist-split)
(global-set-key (kbd "C-x n") 'create-scratch-buffer)
(global-set-key (kbd "RET") 'newline-and-indent)
(global-set-key (kbd "S-<f1>") (lambda () (interactive) (dired "~/")))
(global-set-key (kbd "S-<f2>") (lambda () (interactive) (dired "~/.emacs.d/")))
(global-set-key (kbd "S-<f3>") (lambda () (interactive) (dired "~/git/documents/")))
(global-set-key (kbd "S-<f4>") (lambda () (interactive) (dired "~/Downloads")))
(global-set-key (kbd "S-<f5>") (lambda () (interactive) (dired "~/Dropbox/")))
(global-set-key (kbd "<f6>") 'reload-init-file)
(global-set-key (kbd "<f7>") 'iflipb-next-buffer)
(global-set-key (kbd "<S-f7>") 'iflipb-previous-buffer)
(global-set-key (kbd "C-c n") 'my-dired-create-file)
(global-set-key (kbd "C-<f11>") 'toggle-frame-fullscreen)
(global-set-key (kbd "<f12>") 'run-cask-test)
(global-set-key (kbd "<f8>") 'repeat-complex-command)
;(global-set-key (kbd "<f12>") 'my-save-and-compile)
(global-set-key (kbd "C-c v") 'revert-buffer-without-confirmation)
(global-set-key (kbd "C-c a") 'my-increment-number-at-point)
(global-set-key (kbd "C-c x") 'my-decrement-number-at-point)
(global-set-key (kbd "C-c h") 'file-path-on-clipboard)
(global-set-key (kbd "C-c C-l") 'toggle-truncate-lines)
(global-set-key (kbd "C-'") 'toggle-quotes)
(global-set-key (kbd "C-c C-e") 'lispxmp)
(global-set-key (kbd "C-c <backspace>") 'join-line*)
(global-set-key (kbd "C-c <deletechar>") 'fixup-whitespace)

(global-set-key (kbd "C-<f2>") 'random-11-letter-string)

;; comment line
(global-set-key (kbd "C-<f4>") 'html-html5-template)
;; (global-set-key (kbd "C-<f5>") (lambda()  (interactive) (Lorem-ipsum-insert-paragraphs 20)))
;; (global-set-key (kbd "C-<f6>") 'snippet-html)
;; (global-set-key (kbd "C-<f7>") 'lorem-ipsum-insert-list)
(global-set-key (kbd "C-x M-d") 'insert-current-date)
(global-set-key (kbd "C-c i") 'snippet-latin)
;; C-z restricted to use Tmux, i3 etc
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x q"))

(define-key global-map (kbd "C-c r") 'vr/replace)
(define-key global-map (kbd "C-c q") 'vr/query-replace)
(define-key global-map (kbd "C-c g") 'vr/mc-mark)

(global-set-key (kbd "M-s") 'rg)

(cond
 ((equal system-type 'darwin)
  (global-set-key [(hyper a)] 'mark-whole-buffer)
  (global-set-key [(hyper v)] 'yank)
  (global-set-key [(hyper c)] 'kill-ring-save)
  (global-set-key [(hyper s)] 'save-buffer)
  (global-set-key [(hyper l)] 'goto-line)
  (global-set-key [(hyper w)] (lambda () (interactive) (delete-window)))
  ;; (global-set-key [(hyper z)] 'undo)
  (windmove-default-keybindings)
  (setq select-enable-clipboard t)
  (mac-switch-meta)))

(provide 'shortcuts)
;;; shortcuts.el ends here
