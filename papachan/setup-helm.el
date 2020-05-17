;;; setup-helm.el
;;
(use-package helm-posframe
  :ensure t
  :hook (after-init . helm-posframe-enable)
  :init
  (add-hook 'helm-org-rifle-after-command-hook 'helm-posframe-cleanup)
  :custom
  (helm-posframe-height 15)
  (helm-posframe-width (round (* (frame-width) 1.15)))
  (helm-posframe-parameters '((left-fringe . 0)
                              (right-fringe . 0)
                              (internal-border-width . 12)))
  :config
   (setq helm-posframe-poshandler 'posframe-poshandler-frame-center))

(use-package helm
  :ensure t
  :config (progn
	    (require 'helm-config)
	    (setq helm-idle-delay 0.0
                  helm-ff-skip-boring-files t
                  ;; helm-window-prefer-horizontal-split t
                  helm-candidate-number-limit 100)
	    (helm-mode t)
            (helm-posframe-enable)))

(provide 'setup-helm)
