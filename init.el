(package-initialize)

;TODO - make this so we don't have to enable elpy and disable it again. Would save massively on load times...

(elpy-enable) ; enables elpy, in order that we can set this stuff.
(add-to-list 'python-shell-completion-native-disabled-interpreters
			  "jupyter")
(setq python-shell-interpreter "jupyter"
      python-shell-interpreter-args "console --simple-prompt"
      python-shell-prompt-detect-failure-warning nil)

(elpy-disable) ; disables elpy again in case editing non .py files

(advice-add 'python-mode :before 'elpy-enable) ; waits until we're in python mode again to load elpy

;;

(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/settings.org"))
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
    (ghub doom-modeline all-the-icons-dired all-the-icons-ivy-rich all-the-icons-ivy all-the-icons monokai-theme ein company-anaconda anaconda-mode company-quickhelp company paredit iedit magit org-superstar ido-grid-mode counsel list-packages-ext yasnippet-snippets find-file-in-project elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; Theme
(add-hook 'after-init-hook 
	  (lambda () (load-theme 'monokai t)))

; org superstar
(require 'org-superstar)
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))
(put 'narrow-to-region 'disabled nil)


;; cursor-chg wasn't on ELPA, so had to install manually:
(add-to-list 'load-path "~/.emacs.d/lisp/") ; Tell emacs where your personal elisp lib dir is
(require 'cursor-chg)  ; Load the library
(toggle-cursor-type-when-idle 1) ; Turn on cursor change when Emacs is idle

(require 'ob-ein)


