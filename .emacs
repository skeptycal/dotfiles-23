;; .emacs --- A dotfile by Coleman Gariety

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
 '(ansi-color-names-vector
   ["black" "red" "green" "yellow" "PaleBlue" "magenta" "cyan" "white"])
 '(blink-cursor-delay 10000000)
 '(blink-cursor-interval 1000000000000000)
 '(blink-cursor-mode nil)
 '(compilation-message-face (quote default))
 '(css-indent-offset 2)
 '(cua-rectangle-modifier-key (quote meta))
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "40f6a7af0dfad67c0d4df2a1dd86175436d79fc69ea61614d668a635c2cd94ab" default)))
 '(focus-dimness 1)
 '(haskell-indentation-cycle-warn nil)
 '(haskell-interactive-mode-eval-mode nil)
 '(helm-ag-base-command "ag --vimgrep -U")
 '(helm-ff-file-name-history-use-recentf t)
 '(helm-ff-search-library-in-sexp t)
 '(helm-locate-command "locate %s %s")
 '(helm-mode t)
 '(helm-move-to-line-cycle-in-source t)
 '(helm-scroll-amount 8)
 '(helm-split-window-in-side-p t)
 '(jsx-indent-level 4)
 '(jsx-use-auto-complete t)
 '(linum-format "%4d │ ")
 '(magit-diff-use-overlays nil)
 '(org-agenda-files (quote ("~/Org/todo.org")))
 '(org-support-shift-select nil)
 '(package-selected-packages
   (quote
    (cargo ac-racer racer rust-mode smart-mode-line helm-hoogle wiki-summary ac-haskell-process buffer-move eshell-prompt-extras eshell-did-you-mean eshell-z multi-term helm-ag go-autocomplete go-mode smex focus pophint evil-avy grizzl slime evil-surround god-mode evil-tutor helm-cider cider ghc haskell-mode showkey magit evil writeroom-mode web-mode wc-mode wc-goal-mode w3m sass-mode pandoc-mode pandoc helm-projectile golden-ratio flycheck flx-isearch fill-column-indicator ergoemacs-mode eh-gnus dired-hacks-utils company-web color-theme-solarized auctex ace-flyspell)))
 '(ranger-deer-show-details nil)
 '(ranger-override-dired t)
 '(ranger-show-dotfiles nil)
 '(showkey-log-mode nil)
 '(solarized-bold t)
 '(solarized-termcolors 16)
 '(vc-follow-symlinks t)
 '(web-mode-attr-indent-offset 2)
 '(web-mode-attr-value-indent-offset 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-markup-indent-offset 2)
 '(window-divider-default-places (quote right-only))
 '(window-divider-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-candidate-face ((t (:inherit popup-face :background "black" :foreground "brightyellow"))))
 '(ac-candidate-mouse-face ((t (:background "black" :foreground "cyan"))))
 '(ac-completion-face ((t (:foreground "brightgreen"))))
 '(ac-selection-face ((t (:inherit popup-menu-selection-face :background "black" :foreground "green"))))
 '(border ((t nil)))
 '(cursor ((t (:background "#93a1a1" :height 1.0))))
 '(font-lock-variable-name-face ((t (:foreground "brightmagenta"))))
 '(helm-bookmark-directory ((t (:inherit nil))))
 '(helm-buffer-directory ((t (:foreground "DarkRed"))))
 '(helm-ff-directory ((t (:background "brightblack" :foreground "green"))))
 '(helm-ff-dotted-directory ((t nil)))
 '(helm-ff-executable ((t (:foreground "red" :weight bold))))
 '(helm-header ((t (:background "brightyellow" :foreground "black"))))
 '(helm-header-line-left-margin ((t nil)))
 '(helm-prefarg ((t (:foreground "green"))))
 '(helm-selection ((t (:inherit region :background "white" :foreground "black" :weight normal))))
 '(helm-source-header ((t (:inherit helm-header :background "brightblack" :foreground "magenta" :weight bold))))
 '(linum ((t (:background "brightblack" :foreground "brightgreen" :underline nil))))
 '(mode-line ((t (:background "black" :foreground "brightcyan" :inverse-video t :box nil))))
 '(mode-line-inactive ((t (:background "black" :foreground "brightgreen" :inverse-video t :box nil))))
 '(org-todo ((t (:background "red" :distant-foreground "red" :foreground "brightblack" :weight bold))))
 '(region ((t (:inverse-video t))))
 '(term-color-white ((t (:background "white" :foreground "white"))))
 '(vertical-border ((t (:background "brightblack" :foreground "brightyellow"))))
 '(web-mode-function-call-face ((t (:inherit font-lock-function-name-face))))
 '(web-mode-html-attr-value-face ((t (:inherit font-lock-string-face :foreground "yellow"))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "white"))))
 '(web-mode-html-tag-face ((t (:foreground "white"))))
 '(web-mode-javascript-comment-face ((t (:inherit web-mode-comment-face :foreground "brightgreen"))))
 '(web-mode-javascript-string-face ((t (:inherit web-mode-string-face))))
 '(web-mode-variable-name-face ((t (:inherit default :foreground "magenta")))))

;;; My Code:

;;;;;;;;;;;;
;; Nudity ;;
;;;;;;;;;;;;

(transient-mark-mode t)     ;; show region, drop mark
(global-font-lock-mode t)   ;; for all buffers
(global-visual-line-mode t) ;; word-wrap
(setq shift-select-mode nil) ;; Shift select
(show-paren-mode t)         ;; show matching parentheses
(setq initial-scratch-message "")
(setq inhibit-startup-screen t)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode 0)
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
(desktop-save-mode 1)
(global-set-key (kbd "C-q") 'delete-window)

;; Copy/paste
;;
;; If emacs is run in a terminal, the clipboard- functions have NO
;; effect. Instead, we use of xsel, see
;; http://www.vergenet.net/~conrad/software/xsel/ -- "a command-line
;; program for getting and setting the contents of the X selection"
;;
;; Idea from
;; http://shreevatsa.wordpress.com/2006/10/22/emacs-copypaste-and-x/
;; http://www.mail-archive.com/help-gnu-emacs@gnu.org/msg03577.html
(when (eq system-type 'gnu/linux)
  (unless window-system
    (when (getenv "DISPLAY")
      ;; Callback for when user cuts
      (defun xsel-cut-function (text &optional push)
        ;; Insert text to temp-buffer, and "send" content to xsel stdin
        (with-temp-buffer
          (insert text)
          ;; I prefer using the "clipboard" selection (the one the
          ;; typically is used by c-c/c-v) before the primary selection
          ;; (that uses mouse-select/middle-button-click)
          (call-process-region (point-min) (point-max) "xsel" nil 0 nil "--clipboard" "--input")))
      ;; Call back for when user pastes
      (defun xsel-paste-function()
        ;; Find out what is current selection by xsel. If it is different
        ;; from the top of the kill-ring (car kill-ring), then return
        ;; it. Else, nil is returned, so whatever is in the top of the
        ;; kill-ring will be used.
        (let ((xsel-output (shell-command-to-string "xsel --clipboard --output")))
          (unless (string= (car kill-ring) xsel-output)
            xsel-output )))
      ;; Attach callbacks to hooks
      (setq interprogram-cut-function 'xsel-cut-function)
      (setq interprogram-paste-function 'xsel-paste-function))))

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

(add-hook 'find-file-hook 'linum-mode)

;;;;;;;;;;;;;;;;
;; Auto-modes ;;
;;;;;;;;;;;;;;;;

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.clj\\'" . clojure-mode))
(add-to-list 'auto-mode-alist '("\\.rb\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Vagrantfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\Gemfile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))
(add-to-list 'auto-mode-alist '("\\.sld\\'" . scheme-mode))
(setq web-mode-content-types-alist '(("jsx"  . "\\.js[x]?\\'")))

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

;; Auto close brackets
(electric-pair-mode 1)

;;;;;;;;;;;;;;;
;; Solarized ;;
;;;;;;;;;;;;;;;
(load-theme 'solarized)

;;;;;;;;;;
;; Helm ;;
;;;;;;;;;;

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

;; Helm + Projectile
(helm-projectile-on)
(projectile-global-mode)
(global-set-key (kbd "C-x C-d") 'helm-projectile-find-file)
(global-set-key (kbd "C-x C-g") 'helm-projectile-ag)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-k") 'helm-occur)
(global-set-key (kbd "C-x C-l") 'helm-locate)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-mini)
(global-set-key (kbd "C-x b") 'helm-mini)

;; A lil' performance
(remove-hook 'find-file-hooks 'vc-find-file-hook)

;; Hook flyspell into org-mode
(add-hook 'org-mode-hook 'turn-on-flyspell)
(add-hook 'org-mode-hook 'wc-goal-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Xah Run Current File ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun xah-run-current-file ()
  (interactive)
  (let (
        (-suffix-map
         ;; (‹extension› . ‹shell program name›)
         `(
           ("php" . "php")
           ("pl" . "perl")
           ("py" . "python")
           ("py3" . ,(if (string-equal system-type "windows-nt") "c:/Python32/python.exe" "python3"))
           ("rb" . "ruby")
           ("go" . "go run")
           ("js" . "node") ; node.js
           ("sh" . "bash")
           ("clj" . "java -cp /home/xah/apps/clojure-1.6.0/clojure-1.6.0.jar clojure.main")
           ("rkt" . "racket")
           ("ml" . "ocaml")
           ("vbs" . "cscript")
           ("tex" . "pdflatex")
           ("latex" . "pdflatex")
           ("java" . "javac")
           ("scm" . "chibi-scheme")
           ("hs" . "runghc")
           ("rs" . "rust")
           ))

        -fname
        -fSuffix
        -prog-name
        -cmd-str)

    (when (null (buffer-file-name)) (save-buffer))
    (when (buffer-modified-p) (save-buffer))

    (setq -fname (buffer-file-name))
    (setq -fSuffix (file-name-extension -fname))
    (setq -prog-name (cdr (assoc -fSuffix -suffix-map)))
    (setq -cmd-str (concat -prog-name " \""   -fname "\""))

    (cond
    ((string-equal -fSuffix "el") (load -fname))
     ((string-equal -fSuffix "java")
      (progn
        (shell-command -cmd-str "*xah-run-current-file output*" )
        (shell-command
         (format "java %s" (file-name-sans-extension (file-name-nondirectory -fname))))))
     (t (if -prog-name
            (progn
              (message "Running…")
              (shell-command -cmd-str "*xah-run-current-file output*" ))
          (message "No recognized program file suffix for this file."))))))

(global-set-key (kbd "<f8>") 'xah-run-current-file)
(global-set-key (kbd "C-c C-e") 'xah-run-current-file)

;;;;;;;;;;;;;
;; Haskell ;;
;;;;;;;;;;;;;

(defun inferior-haskell-load-and-run-stationary ()
  (interactive)
  (let ((start-buffer (current-buffer)))
    (inferior-haskell-load-and-run inferior-haskell-run-command)
    (pop-to-buffer start-buffer)))


(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

(eval-after-load 'haskell-mode '(progn
                                  (define-key haskell-mode-map (kbd "C-c C-e") 'inferior-haskell-load-and-run-stationary)
                                  (define-key haskell-mode-map (kbd "C-c C-l") 'inferior-haskell-load-file)
                                  (define-key haskell-mode-map (kbd "C-c C-t") 'inferior-haskell-type)
                                  (define-key haskell-mode-map (kbd "C-c C-i") 'inferior-haskell-info)
                                  (define-key haskell-mode-map (kbd "C-c C-k") 'haskell-process-clear)))

;;;;;;;;;;;;;;
;; Windmove ;;
;;;;;;;;;;;;;;

;; Cycling
(defun windmove-up-cycle()
  (interactive)
  (condition-case nil (windmove-up)
    (error (condition-case nil (windmove-down)
         (error (condition-case nil (windmove-right) (error (condition-case nil (windmove-left) (error (windmove-up))))))))))

(defun windmove-down-cycle()
  (interactive)
  (condition-case nil (windmove-down)
    (error (condition-case nil (windmove-up)
         (error (condition-case nil (windmove-left) (error (condition-case nil (windmove-right) (error (windmove-down))))))))))

(defun windmove-right-cycle()
  (interactive)
  (condition-case nil (windmove-right)
    (error (condition-case nil (windmove-left)
         (error (condition-case nil (windmove-up) (error (condition-case nil (windmove-down) (error (windmove-right))))))))))

(defun windmove-left-cycle()
  (interactive)
  (condition-case nil (windmove-left)
    (error (condition-case nil (windmove-right)
         (error (condition-case nil (windmove-down) (error (condition-case nil (windmove-up) (error (windmove-left))))))))))

;; keys
(define-key global-map (kbd "M-k") 'windmove-up-cycle)
(define-key global-map (kbd "M-j") 'windmove-down-cycle)
(define-key global-map (kbd "M-h") 'windmove-left-cycle)
(define-key global-map (kbd "M-l") 'windmove-right-cycle)
(define-key global-map (kbd "M-K") 'evil-window-split)
(define-key global-map (kbd "M-J") 'evil-window-split)
(define-key global-map (kbd "M-H") 'evil-window-vsplit)
(define-key global-map (kbd "M-L") 'evil-window-vsplit)

;;;;;;;;;;;;;;
;; Org mode ;;
;;;;;;;;;;;;;;

(require 'org)
(setq org-log-done 'time)
(global-unset-key "\C-ca")
(global-set-key "\C-ca" 'org-agenda)
(eval-after-load 'org
  (progn
    (define-key org-mode-map (kbd "M-h") nil)
    (define-key org-mode-map (kbd "TAB") 'org-cycle)))

;; Scheme
(setq scheme-program-name "chibi-scheme")

;;;;;;;;;;;;;;;
;; Evil Mode ;;
;;;;;;;;;;;;;;;

(require 'evil)
(evil-mode 1)
(global-evil-surround-mode)
(setq avy-all-windows nil)
(define-key evil-normal-state-map "f" 'avy-goto-char-timer)
(define-key evil-motion-state-map "f" 'avy-goto-char-timer)
(evil-define-key 'normal org-mode-map (kbd "TAB") 'org-cycle)
(setq evil-want-C-u-scroll t)

;; Controvertsial bindings for eVIl
(define-key evil-normal-state-map "\C-a" 'evil-beginning-of-line)
(define-key evil-insert-state-map "\C-a" 'beginning-of-line)
(define-key evil-visual-state-map "\C-a" 'evil-beginning-of-line)
(define-key evil-motion-state-map "\C-a" 'evil-beginning-of-line)
(define-key evil-normal-state-map "\C-e" 'evil-end-of-line)
(define-key evil-insert-state-map "\C-e" 'end-of-line)
(define-key evil-visual-state-map "\C-e" 'evil-end-of-line)
(define-key evil-motion-state-map "\C-e" 'evil-end-of-line)
(define-key evil-normal-state-map "\C-k" 'kill-line)
(define-key evil-insert-state-map "\C-k" 'kill-line)
(define-key evil-visual-state-map "\C-k" 'kill-line)
(define-key evil-motion-state-map "\C-k" 'kill-line)

;;;;;;;;;;;;;;;;;;;;;;;;
;; Auto Complete Mode ;;
;;;;;;;;;;;;;;;;;;;;;;;;

(require 'auto-complete)
(global-auto-complete-mode 1)
(ac-linum-workaround)

(define-key ac-completing-map "\C-m" nil)
(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-m" 'ac-complete)

;; Never erase buffer
(put 'erase-buffer 'disabled t)

;; Buffer menu
(global-set-key (kbd "C-c C-b") 'buffer-menu)

;;;;;;;;;;;;
;; eshell ;;
;;;;;;;;;;;;

(defun eshell-here ()
  "Opens up a new shell in the directory associated with the
current buffer's file. The eshell is renamed to match that
directory to make multiple eshell windows easier."
  (interactive)
  (let* ((parent (if (buffer-file-name)
                     (file-name-directory (buffer-file-name))
                   default-directory))
         (height (/ (window-total-height) 3))
         (name   (car (last (split-string parent "/" t)))))
    (split-window-vertically (- height))
    (other-window 1)
    (eshell "new")
    (rename-buffer (concat "*eshell: " name "*"))

    (insert (concat "ls"))
    (eshell-send-input)))

(global-set-key (kbd "C-c C-w") 'eshell-here)
(global-set-key (kbd "C-x C-q") 'kill-buffer-and-window)

(require 'cl)

(eval-after-load 'eshell
  '(require 'eshell-z nil t))

(with-eval-after-load "esh-opt"
  (autoload 'epe-theme-lambda "eshell-prompt-extras")
  (setq eshell-highlight-prompt nil
        eshell-prompt-function 'epe-theme-lambda))

;; eshell autocomplete
(defun ac-pcomplete ()
  ;; eshell uses `insert-and-inherit' to insert a \t if no completion
  ;; can be found, but this must not happen as auto-complete source
  (flet ((insert-and-inherit (&rest args)))
    ;; this code is stolen from `pcomplete' in pcomplete.el
    (let* (tramp-mode ;; do not automatically complete remote stuff
           (pcomplete-stub)
           (pcomplete-show-list t) ;; inhibit patterns like * being deleted
           pcomplete-seen pcomplete-norm-func
           pcomplete-args pcomplete-last pcomplete-index
           (pcomplete-autolist pcomplete-autolist)
           (pcomplete-suffix-list pcomplete-suffix-list)
           (candidates (pcomplete-completions))
           (beg (pcomplete-begin))
           ;; note, buffer text and completion argument may be
           ;; different because the buffer text may bet transformed
           ;; before being completed (e.g. variables like $HOME may be
           ;; expanded)
           (buftext (buffer-substring beg (point)))
           (arg (nth pcomplete-index pcomplete-args)))
      ;; we auto-complete only if the stub is non-empty and matches
      ;; the end of the buffer text
      (when (and (not (zerop (length pcomplete-stub)))
                 (or (string= pcomplete-stub ; Emacs 23
                              (substring buftext
                                         (max 0
                                              (- (length buftext)
                                                 (length pcomplete-stub)))))
                     (string= pcomplete-stub ; Emacs 24
                              (substring arg
                                         (max 0
                                              (- (length arg)
                                                 (length pcomplete-stub)))))))
        ;; Collect all possible completions for the stub. Note that
        ;; `candidates` may be a function, that's why we use
        ;; `all-completions`.
        (let* ((cnds (all-completions pcomplete-stub candidates))
               (bnds (completion-boundaries pcomplete-stub
                                            candidates
                                            nil
                                            ""))
               (skip (- (length pcomplete-stub) (car bnds))))
          ;; We replace the stub at the beginning of each candidate by
          ;; the real buffer content.
          (mapcar #'(lambda (cand) (concat buftext (substring cand skip)))
                  cnds))))))

(defvar ac-source-pcomplete
  '((candidates . ac-pcomplete)))

(add-hook 'eshell-mode-hook #'(lambda () (setq ac-sources '(ac-source-pcomplete))))
(add-to-list 'ac-modes 'eshell-mode)

;; ERC
(setq erc-nick "clmg")

;;;;;;;;;;
;; Rust ;;
;;;;;;;;;;

(add-hook 'rust-mode-hook 'cargo-minor-mode)
