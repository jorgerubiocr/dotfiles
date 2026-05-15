;; Basic UI settings
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(load-theme 'manoj-dark t)

;; Set font
 (when (member "Iosevka" (font-family-list))
   (set-face-attribute 'default nil :font "Iosevka" :height 150))

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

;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(setq package-enable-at-startup nil)
(package-initialize)

(unless (package-installed-p 'dart-mode)
  (unless package-archive-contents
    (package-refresh-contents))
  (package-install 'dart-mode))
