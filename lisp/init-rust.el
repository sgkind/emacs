;;; rust
(require-package 'company)
(require-package 'rust-mode)
(require-package 'flycheck)
(require-package 'flycheck-rust)

(require 'rust-mode)
(add-hook 'rust-mode-hook #'lsp)

(provide 'init-rust)
