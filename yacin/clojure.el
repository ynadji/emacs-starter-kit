;;;; .emacs-esque additions
; clojure
(clojure-slime-config)

(setq swank-clojure-classpath (mapcar (lambda (p) (expand-file-name p)) (split-string (getenv "CLASSPATH") ":")))
(setq swank-clojure-extra-vm-args (list "-server" "-Xmx1024m"))

; fuzzzzzy
(define-key lisp-mode-map (kbd "TAB")
            'slime-fuzzy-indent-and-complete-symbol)

(defun clojure-add-classpath (path)
 "Add a classpath to Clojure and refresh slime-lisp-implementations"
 (interactive "GPath: ")
 (push (expand-file-name path) swank-clojure-extra-classpaths)
 (setq slime-lisp-implementations
  (cons `(clojure ,(swank-clojure-cmd) :init swank-clojure-init)
	(remove-if #'(lambda (x) (eq (car x) 'clojure)) slime-lisp-implementations))))
