(jc-ensure-package 'magit)
(jc-ensure-package 'git-commit-mode)
(jc-ensure-package 'git-rebase-mode)
(jc-ensure-package 'gitconfig-mode)
(jc-ensure-package 'gitignore-mode)
(global-set-key (kbd "C-x g") 'magit-status)

(jc-ensure-package 'github-browse-file)
(global-set-key (kbd "C-c g") 'github-browse-file)
