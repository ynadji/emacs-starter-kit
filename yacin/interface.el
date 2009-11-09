;;; loadssssssss
(add-to-list 'load-path "../elpa-to-submit/color-theme.el")
(add-to-list 'load-path "color-theme-library.el")

;;; color-theme
(require 'color-theme)
(color-theme-midnight)

;;; highlight-parens
(require 'highlight-parentheses)
(highlight-parentheses-mode)

;;; syntax highlighting
(global-font-lock-mode t)
(setq font-lock-maximum-decoration t)
