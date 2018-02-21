;;;;;;;;;;;;;;;;;;;;;
;; GENERAL SETTINGS ;;
;;;;;;;;;;;;;;;;;;;;;;

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (autopair neotree helm-projectile helm-projectil nyan-modemode sass-mode scss-mode projectile-mode autopair-global-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; if there is more than one, they won't work right.
 )


;; Check if system is Darwin/macOS
(defun my-system-type-is-darwin ()
  "Return true if system is darwin-based (Mac OS X)"
  (string-equal system-type "darwin")
  )

;; Check if system is Microsoft Windows
(defun my-system-type-is-windows ()
  "Return true if system is Windows-based (at least up to Win7)"
  (string-equal system-type "windows-nt")
  )

;; Check if system is GNU/Linux
(defun my-system-type-is-gnu ()
  "Return true if system is GNU/Linux-based"
  (string-equal system-type "gnu/linux")
  )

(add-to-list 'load-path "~/.emacs.d/custom")
(load "custom-package-management.el")
(load "custom-common.el")
(load "custom-theme.el")
(load "custom-modes.el")
(load "kill-all-buffers.el")

(global-set-key (kbd "M-9")  'windmove-left)
(global-set-key (kbd "M-=") 'windmove-right)
(global-set-key (kbd "M--")    'windmove-up)
(global-set-key (kbd "M-0")  'windmove-down)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(global-set-key  (kbd "M-\\") 'neotree-toggle)
(global-set-key  (kbd "C-x b") 'helm-mini)

(setq auto-save-file-name-transforms
          `((".*" ,(concat user-emacs-directory "auto-save/") t))) 
