;;; init-auto-complete
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete")

(require 'auto-complete)
(require 'auto-complete-config)

(require-package 'popup)

;; 开启全局设定（包含哪些模式在ac-modes里查看）
;; (global-auto-complete-mode t)
;; 添加web-mode模式，在该模式下自动开启自动完成
;;(add-to-list 'ac-modes 'web-mode)

;;使用自带词典
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete/dict")

;;输入3个字符才开始补全
(setq ac-auto-start 3)

;; 补全的快捷键，用于需要提取补全-当还没有输入指定个数字符时显示弹出菜单
(global-set-key "\M-/" 'auto-complete)

;;使用增强的popup列表
;;(require 'pos-tip)
;;(setq ac-quick-help-prefer-pos-tip t)

;;使用增强的popup列表
;;(require-package 'pos-tip)
;;(setq ac-quick-help-prefer-pos-tip t)

;;使用quick-help
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 0.5)

;; show 0.8 second later
(setq ac-auto-show-menu 0.8)

;; 设置tab键的使用模式
;;(setq ac-dwim t)

;; 使用fuzzy功能
;;(setq ac-fuzzy-enable t)

;;菜单
(setq ac-menu-height 12)
(set-face-background 'ac-candidate-face "lightgray")
(set-face-underline 'ac-candidate-face "darkgray")
(set-face-background 'ac-selection-face "steelblue")

(provide 'init-auto-complete)
