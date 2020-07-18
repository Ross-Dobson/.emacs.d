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
    (company-anaconda anaconda-mode company-quickhelp company paredit iedit magit org-superstar ido-grid-mode counsel cyberpunk-theme list-packages-ext yasnippet-snippets find-file-in-project elpy))))
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


;; cursor-chg wasn't on ELPA, so had to install manually:
;; Tell emacs where your personal elisp lib dir is
(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'cursor-chg)  ; Load the library
(toggle-cursor-type-when-idle 1) ; Turn on cursor change when Emacs is idle
