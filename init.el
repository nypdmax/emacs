;; This is my owen configuration.
;; Splited init files are stored in ./init

(add-to-list 'load-path (expand-file-name "init" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "elpa" user-emacs-directory))

;;(set-face-attribute 'default nil :font "Source Code Pro-13")
;; Global shortcuts
(define-key ctl-x-map "l" 'goto-line)
;; Globals settings
(global-linum-mode 1)
;;(setq linum-format "%4d \u2502")

;;Auto pair
;;(setq skeleton-pair t)

;;(setq skeleton-pair-alist
;;      '((?\" ?\")
;;        (?\' ?\')
;;        (?\( ?\))
;;        (?[ ?])
;;        (?{ ?})))

(show-paren-mode t)
;;(setq skeleton-pair t)
(electric-pair-mode t)

;;(require 'init-acews)
(require 'init-linum)

;; Load splited initial files
(require 'init-benchmarking) ;; Measure startup time

;; Package management
(require 'init-melpa)
;; melpa may have connection errors
;;(require 'init-elpa)

;; Load custom headers
(require 'init-c-headers)

;; Enable my c-mode
(require 'init-cmode)

;; Load custom headers
;;(require 'init-c-headers)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(safe-local-variable-values
   (quote
    ((company-clang-arguments " -I/home/cheng/vault/genode/repos/base/include")
     (company-clang-arguments " -I /home/cheng/vault/genode/repos/base/include")
     (company-clang-arguments " -I /home/cheng/vault/genode/repos/base/include/base/")
     (c-set-style . "BSD"))))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBE" :slant normal :weight regular :height 128 :width normal)))))
