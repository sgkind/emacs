(require 'package)

(defun require-package (package)
  "Install given PACKAGE if it was not installed before."
  (if (package-installed-p package)
    t
    (progn
      (unless (assoc package package-archive-contents)
        (package-refresh-contents))
      (package-install package))))

(add-to-list 'package-archives
             '("gnu" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/") t)
(add-to-list 'package-archives
             '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/") t)

(package-initialize)

(provide 'init-elpa)
