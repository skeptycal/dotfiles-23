;;; .emacs --- A dotfile by Coleman Gariety

;;; Commentary:

;; My Emacs
;; fwm...
;; I only put this part in because
;; of fucking flycheck anyway.

;;; Code:

;; show errors
(setq eval-expression-debug-on-error t)

;; A lil' performance
(remove-hook 'find-file-hooks 'vc-find-file-hook)

;; Nudity
(transient-mark-mode t)     ;; show region, drop mark
(global-font-lock-mode t)   ;; for all buffers
(global-visual-line-mode t) ;; word-wrap
(setq shift-select-mode t) ;; Shift select
(show-paren-mode t)         ;; show matching parentheses
(setq initial-scratch-message "")
(setq inhibit-startup-screen t)
(scroll-bar-mode -1)

;; Scroll all the way to the end of the file
(setq scroll-error-top-bottom t)

;; Large file warning
(setq large-file-warning-threshold 10000000)

;; Plugins
(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Newlines
(setq mode-require-final-newline t)

;; Cursor blink
(blink-cursor-mode nil)

;; Vertical border
(set-face-inverse-video-p 'vertical-border nil)
(set-face-background 'vertical-border (face-background 'default))
(set-display-table-slot standard-display-table
                        'vertical-border
                        (make-glyph-code ?|))

;; Don't use ring to kill lines
(defun kill-without-ring ()
  (interactive)
  (delete-region (point)
                 (save-excursion (move-end-of-line 1)
                                 (point)))
  (delete-char 1))
(global-set-key (kbd "C-k") 'kill-without-ring)

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

;; NEO-Tree
(global-set-key (kbd "C-c C-v") 'neotree-toggle)

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

;; Suppress isearch messages
(defadvice isearch-repeat (after isearch-no-fail activate)
  (unless isearch-success
    (ad-disable-advice 'isearch-repeat 'after 'isearch-no-fail)
    (ad-activate 'isearch-repeat)
    (isearch-repeat (if isearch-forward 'forward))
    (ad-enable-advice 'isearch-repeat 'after 'isearch-no-fail)
        (ad-activate 'isearch-repeat)))

;; Bells
(setq visible-bell nil)
(setq ring-bell-function 'ignore)

;; Balance windows
(add-hook 'window-size-change-functions 'balance-windows)

;; Hex colors
(defvar hexcolour-keywords
  '(("#[abcdef[:digit:]]\\{6\\}"
     (0 (put-text-property (match-beginning 0)
                           (match-end 0)
                           'face (list :foreground
                                       (match-string-no-properties 0)))))))
(defun hexcolour-add-to-font-lock ()
  (font-lock-add-keywords nil hexcolour-keywords))
(add-hook 'css-mode-hook 'hexcolour-add-to-font-lock)

;; Scrolling
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

;; Mouse
(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] (lambda ()
                              (interactive)
                              (scroll-down 1)))
  (global-set-key [mouse-5] (lambda ()
                              (interactive)
                              (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t))

;; Column numbers
(setq column-number-mode t)

;; Windmove iTerm2
(global-set-key (kbd "ESC <up>") 'windmove-up)
(global-set-key (kbd "ESC <down>") 'windmove-down)
(global-set-key (kbd "ESC <left>") 'windmove-left)
(global-set-key (kbd "ESC <right>") 'windmove-right)

;; Font-face-under-cursor
(defun what-face (pos)
  (interactive "d")
  (let ((face (or (get-char-property (point) 'read-face-name)
                  (get-char-property (point) 'face))))
    (if face (message "Face: %s" face) (message "No face at %d" pos))))

;; Remove whitespace on save (web-mode)
(add-hook 'web-mode-hook
          (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))
(add-hook 'ruby-mode-hook
          (lambda () (add-to-list 'write-file-functions 'delete-trailing-whitespace)))

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

;;; Encodings
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Highlight
(global-hl-line-mode 0)

;; Hide menubar
(menu-bar-mode -1)
(tool-bar-mode 0)

;; Soft Tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;; JSX
(setq web-mode-content-types-alist
      '(("jsx"  . "\\.js[x]?\\'")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-start 2)
 '(blink-cursor-interval 0.2)
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
 '(ido-cannot-complete-command (quote ido-next-match))
 '(ido-vertical-mode t)
 '(js2-allow-member-expr-as-function-name t)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-global-externs nil)
 '(js2-highlight-level 3)
 '(js2-include-node-externs t)
 '(js2-include-rhino-externs t)
 '(js2-indent-switch-body t)
 '(js2-missing-semi-one-line-override t)
 '(js2-mode-indent-ignore-first-tab nil)
 '(js2-strict-inconsistent-return-warning nil)
 '(js2-strict-missing-semi-warning nil)
 '(jsx-indent-level 4)
 '(jsx-use-auto-complete t)
 '(magit-diff-use-overlays nil)
 '(vc-follow-symlinks t)
 '(wakatime-api-key "c251e0c4-f6fb-4721-8a1e-cefea394f407")
 '(wakatime-cli-path "/Users/Jackson/Sites/wakatime/wakatime-cli.py")
 '(web-mode-attr-indent-offset 2)
 '(web-mode-attr-value-indent-offset 2)
 '(web-mode-code-indent-offset 2)
 '(web-mode-disable-auto-indentation t)
 '(web-mode-disable-auto-opening nil)
 '(web-mode-disable-auto-pairing nil)
 '(web-mode-enable-auto-indentation nil)
 '(web-mode-enable-control-block-indentation nil)
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
 '(region ((t (:inverse-video t))))
 '(vertical-border ((t (:background "black"))))
 '(web-mode-function-call-face ((t (:inherit font-lock-function-name-face))))
 '(web-mode-html-attr-value-face ((t (:inherit font-lock-string-face :foreground "yellow"))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "white"))))
 '(web-mode-html-tag-face ((t (:foreground "white"))))
 '(web-mode-javascript-comment-face ((t (:inherit web-mode-comment-face :foreground "red"))))
 '(web-mode-javascript-string-face ((t (:inherit web-mode-string-face))))
 '(web-mode-variable-name-face ((t (:inherit default :foreground "magenta")))))

;; Select keymap
(global-unset-key (vector (list 'shift 'left)))
(global-unset-key (vector (list 'shift 'right)))
(define-key input-decode-map "\e[1;2D" [S-left])
(define-key input-decode-map "\e[1;2C" [S-right])
(define-key input-decode-map "\e[1;2B" [S-down])
(define-key input-decode-map "\e[1:2A" [S-up])

;; Auto close brackets
(electric-pair-mode 1)

;; Clojure
(add-hook 'clojure-mode-hook #'smartparens-strict-mode)

;; Clipboard interoperability
;; (defun copy-from-osx ()
;;   (shell-command-to-string "pbpaste"))
;; (defun paste-to-osx (text &optional push)
;;   (let ((process-connection-type nil))
;;     (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
;;       (process-send-string proc text)
;;       (process-send-eof proc))))
;; (setq interprogram-cut-function 'paste-to-osx)
;; (setq interprogram-paste-function 'copy-from-osx)

;; Save & compile
(defun save-and-compile ()
  (interactive)
  (save-some-buffers 1)
  (recompile))

(global-set-key (kbd "C-c C-c") 'save-and-compile)

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

;; Golden ratio + helm resize
;; (defun pl/helm-alive-p ()
;;   (if (boundp 'helm-alive-p)
;;       (symbol-value 'helm-alive-p)))

;; (add-to-list 'golden-ratio-inhibit-functions 'pl/helm-alive-p)

;; Projectile
(helm-projectile-on)
(projectile-global-mode)
(global-set-key (kbd "C-x C-d") 'helm-projectile-find-file)
(global-set-key (kbd "C-x C-g") 'helm-projectile-ag)

;; Auto complete
(global-auto-complete-mode t)

;; Run current file
(defun xah-run-current-file ()
  "Execute the current file.
For example, if the current buffer is the file x.py, then it'll call 「python x.py」 in a shell.
The file can be Emacs Lisp, PHP, Perl, Python, Ruby, JavaScript, Bash, Ocaml, Visual Basic, TeX, Java, Clojure.
File suffix is used to determine what program to run.

If the file is modified or not saved, save it automatically before run.

URL `http://ergoemacs.org/emacs/elisp_run_current_file.html'
version 2016-01-28"
  (interactive)
  (let (
        (ξsuffix-map
         `(
           ("php" . "php")
           ("pl" . "perl")
           ("py" . "python")
           ("py3" . ,(if (string-equal system-type "windows-nt") "c:/Python32/python.exe" "python3"))
           ("rb" . "ruby")
           ("go" . "go run")
           ("js" . "node")
           ("sh" . "bash")
           ("rkt" . "racket")
           ("ml" . "ocaml")
           ("vbs" . "cscript")
           ("tex" . "pdflatex")
           ("latex" . "pdflatex")
           ("java" . "javac")
           ("scm" . "gosh")
           ("lisp" . "clisp")
           ))

        ξfname
        ξfSuffix
        ξprog-name
        ξcmd-str)

    (when (null (buffer-file-name)) (save-buffer))
    (when (buffer-modified-p) (save-buffer))

    (setq ξfname (buffer-file-name))
    (setq ξfSuffix (file-name-extension ξfname))
    (setq ξprog-name (cdr (assoc ξfSuffix ξsuffix-map)))
    (setq ξcmd-str (concat ξprog-name " \""   ξfname "\""))

    (cond
     ((string-equal ξfSuffix "el") (load ξfname))
     ((string-equal ξfSuffix "java")
      (progn
        (shell-command ξcmd-str "*xah-run-current-file output*" )
        (shell-command
         (format "java %s" (file-name-sans-extension (file-name-nondirectory ξfname))))))
     (t (if ξprog-name
            (progn
              (shell-command ξcmd-str "*xah-run-current-file output*" ))
          (message "No recognized program file suffix for this file."))))))

(global-set-key (kbd "<f8>") 'xah-run-current-file)
