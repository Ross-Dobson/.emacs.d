(package-initialize)

(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/settings.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (paredit iedit magit org-superstar ido-grid-mode counsel cyberpunk-theme list-packages-ext yasnippet-snippets find-file-in-project elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook 'after-init-hook 
	  (lambda () (load-theme 'cyberpunk t)))

(require 'org-superstar)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
(put 'narrow-to-region 'disabled nil)
