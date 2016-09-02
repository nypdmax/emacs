(require 'ggtags)
(add-hook 'c-mode-common-hook
	  (lambda()
	    (when (derived-mode-p 'c-mode 'c++-mode 'asm-mode)
	      (ggtags-mode 1))))

(require 'company)
;; set company-backends
(add-to-list 'company-backends '(company-c-headers
                                 company-clang
                                 company-gtags))

;;(require 'c-mode)
(add-hook 'c-mode-hook
          (lambda() (local-set-key (kbd "<RET>") 'electric-indent-just-newline)))

;; set utils
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)
(setq c-default-style "BSD")
(setq c-basic-offset 4)
(electric-indent-mode 1)
;;(add-to-list 'auto-indent-known-indent-levels 'c-basic-offset)
;;(setq auto-indent-assign-indent-level 4)
;; cedet
;;(semantic-mode 1)
;;(setq semanticdb-default-save-directory "~/.emacs.d/semanticdb")
;;(semantic-load-enable-code-helpers)
;;(semantic-load-enable-code-helpers)
;;semantic: use tab for auto-complete
;;(global-set-key [(control tab)] 'semantic-ia-complete-symbol-menu)
;;(setq semanticdb-project-roots
;;     (list (expand-file-name "/")))
;;(setq semanticdb-default-save-directory "~/.emacs.d/")
(global-company-mode t)
(setq company-idle-delay 0.2)
(setq kill-ring-max 512)
(setq mark-ring-max 512)
(transient-mark-mode 1)
(column-number-mode t)
(show-paren-mode t)
(ctypes-auto-parse-mode 1)

;; Define ggtags hot keys
(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g d") 'ggtags-find-definition)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)

(provide 'init-cmode)
