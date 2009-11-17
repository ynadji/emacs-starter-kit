;;; loadssssssss
(add-to-list 'load-path "../elpa-to-submit/color-theme.el")
(add-to-list 'load-path "color-theme-library.el")

;;; color-theme
(require 'color-theme)
(color-theme-midnight)

;;; highlight-parens
(require 'highlight-parentheses)
(highlight-parentheses-mode 1)

;;; syntax highlighting
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)

;;;; General options
(setq scroll-conservatively most-positive-fixnum)
