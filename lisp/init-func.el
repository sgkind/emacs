(require 'package)

;;(defun require-package (package)
;;  "Install given PACKAGE if it was not installed before."
;;  (if (package-installed-p package)
;;    t
;;    (progn
;;      (unless (assoc package package-archive-contents)
;;        (package-refresh-contents))
;;      (package-install package))))

(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION. if NO-REFRESH is non-nil, the available package lists will not be re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
	(if (boundp 'package-selected-packages)
	    ;; Record this as a package the user installed explicitly
	    (package-install package nil)
	  (package-install package))
      (progn
	(package-refresh-contents)
	(require-package package min-version t)))))

(defun maybe-require-package (package &optional min-version no-refresh)
  "Try to install PACKAGE, and return non-nil if successful. In the event of failure, return nil and print a warning message. Optionally require MIN-VERSION. If NO-REFRESH is no-nil, the available package lists will not be re-downloaded in order to locate PACKAGE."
  (condition-case err
      (require-package package min-version no-refresh)
    (error
     (message "Couldn't install optional package `%s`:%S" package err)
     nil)))

(package-initialize)

(provide 'init-func)
