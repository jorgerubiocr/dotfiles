;; Basic UI settings
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(load-theme 'manoj-dark t)

;; Set column of numbers
(global-display-line-numbers-mode t)

;; Set column
(setq-default fill-column 80)
(global-display-fill-column-indicator-mode 1)

;; Smooth scroll
(setq scroll-step 1)
(setq scroll-conservatively 10000)
(setq scroll-margin 10)
(setq scroll-preserve-screen-position t)

(when (member "Iosevka Nerd Font" (font-family-list))
  (set-face-attribute 'default nil :font "Iosevka Nerd Font" :height 150))

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
 '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/" t)))
 '(backup-directory-alist '((".*" . "~/.emacs.d/backups/")))
 '(package-selected-packages nil)) 

;; Not .#file
(setq create-lockfiles nil)

;; Create the autosave and backups dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups/" t)

(use-package dart-mode
  :ensure t
  :mode "//.dart//;")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
