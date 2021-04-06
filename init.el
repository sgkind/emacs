(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(setq package-archives '(("gnu" . "http://mirrors.ustc.edu.cn/elpa/gun/")
			 ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
			 ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/melpa-stable/")
			 ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))

(require 'init-func)
(require 'init-ui)
(require 'init-editing)
(require 'init-navigation)
(require 'init-miscellaneous)
(require 'init-company-mode)
(require 'init-rust)
(require 'init-auto-complete)
(require 'init-lsp-mode)

;; 显示行号

(provide 'init)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (flycheck rainbow-delimiters golden-ratio atom-one-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
