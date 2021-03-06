(jc-ensure-package 'helm)
(require 'helm-config)
(require 'helm-files)
(jc-ensure-package 'helm-ls-git)
(require 'helm-ls-git)
(setq helm-ls-git-show-abs-or-relative 'relative)

(helm-mode t)

(setq helm-ff-toggle-basename nil)

(defun helm-all-the-things ()
  "Use helm to find anything"
  (interactive)
  (helm :sources '(helm-source-findutils
		   helm-source-files-in-current-dir
		   ;; helm-source-recentf
		   helm-source-buffers-list
		   helm-source-ctags
		   helm-source-etags-select
		   helm-source-ls-git
		   helm-source-ls-git-status)
	:buffer "*helm all the things*"))

(global-set-key (kbd "C-x f") 'helm-all-the-things)

(jc-ensure-package 'helm-swoop)
(require 'helm-swoop)

(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-I") 'helm-swoop-back-to-last-point)

(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
