;;; .emacs --- A dotfile by Coleman Gariety

;;; Commentary:

;; My Emacs
;; fwm...
;; I only put this part in because
;; of fucking flycheck anyway.

;;; Custom

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-start 2)
 '(blink-cursor-delay 10000000)
 '(blink-cursor-interval 1000000000000000)
 '(blink-cursor-mode nil)
 '(compilation-message-face (quote default))
 '(css-indent-offset 2)
 '(cua-rectangle-modifier-key (quote meta))
 '(custom-safe-themes
   (quote
    ("e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "40f6a7af0dfad67c0d4df2a1dd86175436d79fc69ea61614d668a635c2cd94ab" default)))
 '(fringe-mode nil nil (fringe))
 '(helm-autoresize-max-height 15)
 '(helm-autoresize-min-height 5)
 '(helm-autoresize-mode t)
 '(helm-ff-file-name-history-use-recentf t)
 '(helm-ff-search-library-in-sexp t)
 '(helm-locate-command "locate %s %s")
 '(helm-mode t)
 '(helm-move-to-line-cycle-in-source t)
 '(helm-scroll-amount 8)
 '(helm-split-window-in-side-p t)
 '(jsx-indent-level 4)
 '(jsx-use-auto-complete t)
 '(magit-diff-use-overlays nil)
 '(org-agenda-files (quote ("~/Documents/reading list.org")))
 '(org-support-shift-select t)
 '(ranger-deer-show-details nil)
 '(ranger-override-dired t)
 '(ranger-show-dotfiles nil)
 '(vc-follow-symlinks t)
 '(web-mode-attr-indent-offset 2)
 '(web-mode-attr-value-indent-offset 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-markup-indent-offset 2))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(border ((t nil)))
 '(font-lock-variable-name-face ((t (:foreground "brightmagenta"))))
 '(helm-bookmark-directory ((t (:inherit nil))))
 '(helm-buffer-directory ((t (:foreground "DarkRed"))))
 '(helm-ff-directory ((t (:background "brightblack" :foreground "green"))))
 '(helm-ff-dotted-directory ((t nil)))
 '(helm-ff-executable ((t (:foreground "red" :weight bold))))
 '(helm-header ((t (:background "brightyellow" :foreground "black"))))
 '(helm-header-line-left-margin ((t nil)))
 '(helm-selection ((t (:inherit region :background "white" :foreground "black" :weight normal))))
 '(helm-source-header ((t (:inherit helm-header :background "brightblack" :foreground "magenta" :weight bold))))
 '(mode-line ((t (:background "black" :foreground "brightcyan" :inverse-video t :box nil))))
 '(org-todo ((t (:background "red" :distant-foreground "red" :foreground "brightblack" :weight bold))))
 '(region ((t (:inverse-video t))))
 '(vertical-border ((t (:background "brightblack" :foreground "brightyellow"))))
 '(web-mode-function-call-face ((t (:inherit font-lock-function-name-face))))
 '(web-mode-html-attr-value-face ((t (:inherit font-lock-string-face :foreground "yellow"))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "white"))))
 '(web-mode-html-tag-face ((t (:foreground "white"))))
 '(web-mode-javascript-comment-face ((t (:inherit web-mode-comment-face :foreground "red"))))
 '(web-mode-javascript-string-face ((t (:inherit web-mode-string-face))))
 '(web-mode-variable-name-face ((t (:inherit default :foreground "magenta")))))

;;; My Code:

;; Nudity
(transient-mark-mode t)     ;; show region, drop mark
(global-font-lock-mode t)   ;; for all buffers
(global-visual-line-mode t) ;; word-wrap
(setq shift-select-mode t) ;; Shift select
(show-paren-mode t)         ;; show matching parentheses
(setq initial-scratch-message "")
(setq inhibit-startup-screen t)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode 0)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

;; Vertical border
(set-face-inverse-video-p 'vertical-border nil)
(set-face-background 'vertical-border (face-background 'default))
(set-display-table-slot standard-display-table
                        'vertical-border
                        (make-glyph-code ?┃))

;; Foreign packages
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives
               '("gnu" . "http://elpa.gnu.org/packages/") t)
  (add-to-list 'package-archives
               '("melpa" . "https://melpa.org/packages/") t)
  (add-to-list 'package-archives
               '("marmalade" . "http://marmalade-repo.org/packages/") t))

;; Auto-modes
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.clj\\'" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Vagrantfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))
(setq web-mode-content-types-alist
      '(("jsx"  . "\\.js[x]?\\'")))

;; Auto-balance windows
(add-hook 'window-size-change-functions 'balance-windows)

;; Pgdn & Pgup work properly
(setq scroll-error-top-bottom t)

;; Large file warning
(setq large-file-warning-threshold 100000)

;; Newlines
(setq mode-require-final-newline t)

;; Scrolling
(setq redisplay-dont-pause t
      scroll-margin 5
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

;; Column numbers in modeline
(setq column-number-mode t)

;; Remove whitespace on save (web-mode)
(add-hook 'web-mode-hook
          (lambda ()
            (add-to-list 'write-file-functions
                         'delete-trailing-whitespace)))
(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'write-file-functions
                         'delete-trailing-whitespace)))

;; Replace selection
(delete-selection-mode 1)

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; Disable lockfiles in server mode
(setq create-lockfiles nil)

;; Store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;;; UTF-8 4 lyfe
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Soft Tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; Region-Select keymapping
(global-unset-key (vector (list 'shift 'left)))
(global-unset-key (vector (list 'shift 'right)))
(define-key input-decode-map "\e[1;2D" [S-left])
(define-key input-decode-map "\e[1;2C" [S-right])
(define-key input-decode-map "\e[1;2B" [S-down])
(define-key input-decode-map "\e[1:2A" [S-up])

;; Auto close brackets
(electric-pair-mode 1)

;; Solarized
(load-theme 'solarized)

;; Helm
(require 'helm-config)
(helm-mode 1)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; makes TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c h o") 'helm-occur)
(global-set-key (kbd "C-c h l") 'helm-locate)
(global-set-key (kbd "C-c h t") 'helm-top)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-mini)

;; Helm + Projectile
(helm-projectile-on)
(projectile-global-mode)
(global-set-key (kbd "C-x C-d") 'helm-projectile-find-file)
(global-set-key (kbd "C-x C-g") 'helm-projectile-ag)

;; Auto complete
(global-auto-complete-mode t)

;; A lil' performance
(remove-hook 'find-file-hooks 'vc-find-file-hook)

;; Font-face-under-cursor
(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
                  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

;; Windmove
(global-set-key (kbd "ESC <up>") 'windmove-up)
(global-set-key (kbd "ESC <down>") 'windmove-down)
(global-set-key (kbd "ESC <left>") 'windmove-left)
(global-set-key (kbd "ESC <right>") 'windmove-right)
