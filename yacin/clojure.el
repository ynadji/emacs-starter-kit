;;;; .emacs-esque additions
; clojure
(clojure-slime-config)

(setq swank-clojure-classpath (mapcar (lambda (p) (expand-file-name p)) (split-string (getenv "CLASSPATH") ":")))
(setq swank-clojure-extra-vm-args (list "-server" "-Xmx1024m"))
