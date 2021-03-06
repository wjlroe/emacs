;; Some keybindings live with the respective packages. This file
;; contains key bindings that don't fit anywhere else.

;; Allow hash to be entered
(global-set-key (kbd "M-3") '(lambda () (interactive) (insert "#")))
(global-set-key (kbd "s-3") '(lambda () (interactive) (insert "#")))

;; Remap cmd and alt
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;; Automatically indent
(global-set-key (kbd "RET") 'newline-and-indent)

;; Use s-s to search the project (using ag)
(global-set-key (kbd "s-s") 'ag-project)

;; Stupid mac os-x uk keyboard # problems with emacsclient
(global-set-key (kbd "C-c 0") 'server-edit)
(global-set-key (kbd "C-c w") 'delete-frame)

;; I never want to use ctrl-z from emacs
(global-unset-key (kbd "C-z"))

;; Helm all the things
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; Fullscreen
(global-set-key (kbd "M-RET") 'toggle-frame-fullscreen)

;; Insert some text when using rectangle selection
(global-set-key (kbd "C->") 'string-insert-rectangle)

;;
;; Taken from https://github.com/technomancy/better-defaults/blob/master/better-defaults.el
;;

(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
