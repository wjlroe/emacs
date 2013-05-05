;; Strip back the UI
(setq inhibit-startup-message t)
(tool-bar-mode 0)
(menu-bar-mode 1)
(scroll-bar-mode 0)

;; Don't jump around when scrolling
(setq scroll-step 1)

;; No need for backup files as everything important is in git.
(setq make-backup-files nil)

;; Don't go 'beep' on the train!
(setq ring-bell-function 'ignore)

;; Show line numbers
(global-linum-mode 1)
(setq linum-format "%3d")

;; Show line and column in the modeline
(line-number-mode 1)
(column-number-mode 1)

;; Indent
(setq standard-indent 2)

;; Electric!
(electric-pair-mode t)
(electric-indent-mode t)