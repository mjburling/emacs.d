;;; setup-projectile.el
(require 'projectile)

(defun file-fuzzy-finder ()
  "Open files with projectile-find-file or projectile-find-file-in-directory"
  (interactive)
  (if (projectile-project-p)
    (projectile-find-file)
    (ido-find-file)))

(use-package projectile
  :config
  (progn
    (projectile-global-mode)
    (setq projectile-enable-caching t)

    (setq projectile-completion-system 'helm)
    (helm-projectile-on)

    (setq projectile-switch-project-action 'projectile-dired)

    (setq projectile-mode-line '(:eval (format " Prj[%s]" (projectile-project-name)))))
  :bind (("C-c p p" . projectile-switch-project)
         ("C-c p f" . file-fuzzy-finder)))

(provide 'setup-projectile)
;;; setup-projectile.el ends here
