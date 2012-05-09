(setenv "PATH" (concat "/Users/paul/bin" ":" (getenv "PATH")))

(put 'narrow-to-region 'disabled nil)

(setq max-specpdl-size (* 15 max-specpdl-size))

(setq max-lisp-eval-depth (* 30 max-lisp-eval-depth))

(setq gnus-select-method '(nntp "news.giganews.com"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Tuareg mode

(push "~/share/emacs/site-lisp/tuareg-2.0.1" load-path)
(add-to-list 'auto-mode-alist '("\\.ml\\w?" . tuareg-mode))
(autoload 'tuareg-mode "tuareg" "Major mode for editing Caml code" t)
(autoload 'camldebug "camldebug" "Run the Caml debugger" t)
(dolist (ext '(".cmo" ".cmx" ".cma" ".cmxa" ".cmi"))
  (add-to-list 'completion-ignored-extensions ext))

;;; paredit
(push "~/share/emacs/site-lisp/paredit" load-path)
(autoload 'enable-paredit-mode "paredit"
"Turn on pseudo-structural editing of Lisp code."
t)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'slime-mode-hook 'enable-paredit-mode)

;;; slime
(load (expand-file-name "~/quicklisp/slime-helper.el"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Description: Work with TPTP files, theorem provers, and model finders.
(add-to-list 'load-path "~/share/emacs/site-lisp/tptp")
(require 'tptp)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(emacs-lisp-mode-hook
   (quote (turn-on-eldoc-mode checkdoc-minor-mode enable-paredit-mode))))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setenv "MIZFILES" "/usr/local/share/mizar")
(push "/usr/local/share/mizar" load-path)
(require 'mizar)
(add-to-list 'auto-mode-alist '("\\.miz\\'" . mizar-mode))

