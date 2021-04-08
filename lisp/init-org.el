(require-package 'org)
(require-package 'org-bullets)

(require 'org-install)
(require 'org-bullets)


;; The following lines are always needed. Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-local-mode is on
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))) 
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(provide 'init-org)
