(package-initialize)

;; This org stuff has to go here. Oddly enough, settings.org doesn't load correctly if org isn't loaded
;; So no use trying to load org in an .org file
(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/settings.org"))

;;

(custom-set-variables 
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(doom-modeline-github t)
 '(doom-modeline-minor-modes nil)
 '(ein:output-area-inlined-images t)
 '(org-babel-load-languages (quote ((ein . t) (emacs-lisp . t))))
 '(package-selected-packages
   (quote
    (dashboard page-break-lines projectile ghub doom-modeline all-the-icons-dired all-the-icons-ivy-rich all-the-icons-ivy all-the-icons monokai-theme ein company-anaconda anaconda-mode company-quickhelp company paredit iedit magit org-superstar ido-grid-mode counsel list-packages-ext yasnippet-snippets find-file-in-project elpy))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
