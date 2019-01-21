(add-to-list 'load-path "~/.emacs.d/modules/")

(eshell)

(use-package csv-mode)

(use-package helm)

(use-package evil
  :config (evil-mode t))

(use-package evil-org)

(use-package evil-numbers
  :bind (:map evil-normal-state-map
               ("+" . evil-numbers/inc-at-pt)
               ("-" . evil-numbers/dec-at-pt)
         :map evil-visual-state-map
               ("+" . evil-numbers/inc-at-pt)
               ("-" . evil-numbers/dec-at-pt)))

(use-package evil-quickscope
  :config (global-evil-quickscope-mode t))

(use-package evil-surround
  :config (global-evil-surround-mode 1))


(use-package evil-visualstar
  :config (global-evil-visualstar-mode t))

(use-package evil-commentary
  :config (evil-commentary-mode t))

(use-package evil-string-inflection)

(defun my-move-key (keymap-from keymap-to key)
  "Moves key binding from one keymap to another, deleting from the old location. "
  (define-key keymap-to key (lookup-key keymap-from key))
  (define-key keymap-from key nil))
(my-move-key evil-motion-state-map evil-normal-state-map (kbd "RET"))
(my-move-key evil-motion-state-map evil-normal-state-map " ")

(define-prefix-command 'space-map)
(define-key evil-normal-state-map (kbd "SPC") 'space-map)
(define-key evil-motion-state-map (kbd "SPC") 'space-map)
(define-key space-map (kbd "x") 'counsel-M-x)
(define-key space-map (kbd "b") 'ivy-switch-buffer)
(define-key space-map (kbd "f") 'counsel-find-file)
(define-key space-map (kbd "/") 'swiper)

(setq blink-cursor-mode nil)
(setq inhibit-startup-screen t)
(setq line-number-mode t)
(scroll-bar-mode -1)
(show-paren-mode)
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq global-hl-line-mode t)
(setq global-auto-revert-mode t)
(setq global-visual-line-mode t)

(global-set-key (kbd "<f4>") 'ff-find-other-file)
(recentf-mode)

(use-package rainbow-mode
      :ensure t
      :bind (:map space-map ("h h" . rainbow-mode)))

(auto-image-file-mode)

(use-package smart-tabs-mode)
(add-hook 'c-mode-common-hook (lambda () (setq indent-tabs-mode t)))
;; (smart-tabs-insinuate 'c 'c++)
;; (setq smart-tabs-mode t)

(define-key space-map (kbd "w w") 'whitespace-mode)

(use-package beacon
             :config (beacon-mode))

(use-package ido
  :config (ido-mode))

;; (global-set-key (kbd "C-x C-f") 'ido-find-file)
;; (global-set-key (kbd "C-x b") 'ido-switch-buffer)

(use-package ace-window
  :bind ("C-x o" . ace-window)
  :config (setq ace-window-display-mode t))

(custom-set-faces
 '(default ((t (:height 98 :foundry "DAMA" :family "Consolas for Powerline")))))

(use-package xresources-theme
    :ensure t)

(use-package company
  :config
  (setq company-backends (quote
                          (company-bbdb
                           company-nxml
                           company-css
                           company-semantic
                           company-cmake
                           company-capf
                           company-dabbrev-code
                           company-gtags
                           company-etags
                           company-keywords
                           company-oddmuse
                           company-files
                           company-dabbrev)))
  (setq completion-on-separator-character t)
  (add-hook 'after-init-hook 'global-company-mode)
  :bind ("<C-tab>" . company-complete))

(use-package which-key
  :config (which-key-mode))

(use-package git-gutter
  :config (global-git-gutter-mode))

(use-package swiper)

(use-package ivy
  :config 
  (ivy-mode)
  (setq ivy-use-virtual-buffers t)
  :bind ("C-x b" . ivy-switch-buffer))

(use-package counsel
      :bind 
      ("M-x" . counsel-M-x)
      ("C-x C-f" . counsel-find-file))

(use-package counsel-etags
      :ensure t)

(use-package htmlize
      :ensure t)

(use-package org
      :ensure org-plus-contrib)

(eval-after-load 'ox '(require 'ox-koma-letter))

(use-package ox-reveal
  :ensure t)

(use-package org-pdfview
       :ensure t)
	   
(add-to-list 'org-file-apps '("\\.pdf::\\([[:digit:]]+\\)\\'" . org-pdfview-open))

(use-package org-pomodoro
  :bind (:map space-map ("o p" . org-pomodoro)))

(use-package org-ref)

(require 'doi-utils)
(require 'org-ref-pdf)
(require 'org-ref-url-utils)
(require 'org-ref-bibtex)
(require 'org-ref-latex)
(require 'org-ref-arxiv)
(require 'org-ref-isbn)
(require 'org-ref-wos)
(require 'org-ref-scopus)
(require 'x2bib)
(require 'nist-webbook)
(require 'org-ref-citeproc)
(require 'unsrt)

(use-package org-noter
      :ensure t)

(use-package org-download
      :ensure t)

(define-key space-map (kbd "c c") 'org-capture)

(defun org-capture-insert-orgref-link (keyword)
    ""
    (crossref-add-bibtex-entry keyword "/mnt/piland/sascha/documents/research/bib.bib")
    keyword
  )

(setq org-capture-templates 
             '(("p" "Paper" entry (file+headline "/mnt/piland/sascha/documents/research/overview.org" "Unsorted") "* %x")))

(setq org-agenda-files
   (quote ("")))

(setq org-latex-prefer-user-labels t)
(setq org-latex-pdf-process
      (quote
       ("pdflatex -interaction nonstopmode -output-directory %o %f" 
         "biber %b" 
         "pdflatex -interaction nonstopmode -output-directory %o %f" 
         "pdflatex -interaction nonstopmode -output-directory %o %f")))
(setq org-src-fontify-natively t)

(require 'ox-latex)
(add-to-list
 'org-latex-classes
 '("dinbrief"
   "\\documentclass[12pt]{dinbrief}
\[DEFAULT-PACKAGES]
\[PACKAGES]
\[EXTRA]"))

(add-to-list
 'org-latex-classes
 '("cg"
   "\\documentclass{cg}"
   ("\\chapter\{%s\}" . "\\chapter*\{%s\}")
   ("\\section\{%s\}" . "\\section*\{%s\}")
   ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
   ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))

(use-package org-caldav
  :config
  (setq org-caldav-url "https://cal.frotticloud.ydns.eu:22123/frigge")
  (setq org-caldav-calendar-id "4780be13-a759-7f2b-21d9-c6df543aa5d7")
  (setq org-caldav-inbox "~/my_agenda/caldav.org")
  (setq org-caldav-files '("/mnt/piland/sascha/documents/todo.org")))

(plist-put org-format-latex-options :scale 1.5)

(require 'ob-C)
(setq org-babel-load-languages '((python . t)
								 (emacs-lisp . t)
								 (latex . t)
								 (ipython . t)
								 (C . t)))

(setq org-latex-listings t)
(add-to-list 'org-latex-packages-alist '("" "listings"))
(add-to-list 'org-latex-packages-alist '("" "color"))

(use-package ob-ipython)

(defun set-tubs-smtp ()
	(setq send-mail-function (quote smtpmail-send-it))
	(setq smtpmail-smtp-server "groupware.tu-braunschweig.de")
	(setq smtpmail-smtp-service 465)
	(setq smtpmail-stream-type 'ssl)
	(setq user-full-name "Sascha Fricke")
	(setq user-mail-address "Sascha Fricke <s.fricke@tu-bs.de>"))

      (defun set-gmail-smtp ()
	(setq send-mail-function (quote smtpmail-send-it))
	(setq smtpmail-smtp-server "smtp.gmail.com")
	(setq smtpmail-smtp-service 465)
	(setq smtpmail-stream-type 'ssl)
	(setq user-full-name "Sascha Fricke")
	(setq user-mail-address "Sascha Fricke <sascha.frigge@gmail.com>"))

;; (set-tubs-smtp)
(set-gmail-smtp)

(require 'mu4e)
  (custom-set-variables
   '(mu4e-attachment-dir "/home/frigge/Downloads")
   '(mu4e-compose-signature-auto-include nil)
   '(mu4e-drafts-folder "/drafts")
   '(mu4e-get-mail-command "mbsync -a")
   '(mu4e-maildir "/home/frigge/.mail")
   '(mu4e-refile-dir "/archive")
   '(mu4e-sent-folder "/sent")
   '(mu4e-trash-folder "/trash")
   '(mu4e-update-interval 300)
   '(mu4e-use-fancy-chars t)
   '(mu4e-view-show-address t)
   '(mu4e-view-show-images t))
(add-to-list 'mu4e-view-actions '("ViewInBrowser" . mu4e-action-view-in-browser) t)

(defadvice notmuch-mua-reply (around notmuch-fix-sender)
     (let ((sender "Sascha Fricke <s.fricke@tu-bs.de>"))
       ad-do-it))
   (ad-activate 'notmuch-mua-reply)

(setq notmuch-address-selection-function
      (lambda (prompt collection initial-input)
        (completing-read prompt (cons initial-input collection) nil t nil 'notmuch-address-history)))

(use-package projectile
      :config (setq projectile-mode t)
      (define-key space-map (kbd "p") 'projectile-command-map)
      (setq projectile-tags-command "ctags -Re -f '%s' --fields=+iaSt --extra=+q --exclude='.git' %s"))

(use-package org-projectile
  :bind (:map space-map ("c p" . org-projectile-project-todo-completing-read))
              :config (progn (org-projectile-per-project)
                        (setq org-projectile-per-repo-filepath "project_todo.org")
                        (setq org-agenda-files (append org-agenda-files (org-projectile-todo-files)))))

(use-package ag
  :config (setq ag-group-matches nil))

(use-package wgrep)
(use-package wgrep-ag)

(setq ctags-update-command "/usr/bin/ctags")
(setq ctags-update-delay-seconds 10)
(setq ctags-update-other-options
	      (quote
	       ("--fields=+iaSt"
		"--extra=+q"
		"--exclude='*.elc'"
		"--exclude='*.class'"
		"--exclude='.git'"
		"--exclude='.svn'"
		"--exclude='SCCS'"
		"--exclude='RCS'"
		"--exclude='CVS'"
		"--exclude='EIFGEN'"
		"-R"
		"-e")))

(use-package flycheck
  :config (global-flycheck-mode))

(use-package magit)

(require 'smerge-mode)
(define-key space-map (kbd "s s") 'smerge-mode)

(defun my-smerge-bindings ()
  (define-key space-map (kbd "s RET") 'smerge-keep-current)
  (define-key space-map (kbd "s d m") 'smerge-diff-base-mine)
  (define-key space-map (kbd "s d o") 'smerge-diff-base-other)
  (define-key space-map (kbd "s d b") 'smerge-diff-mine-other)

  (define-key space-map (kbd "s C") 'smerge-combine-with-next)
  (define-key space-map (kbd "s E") 'smerge-ediff)
  (define-key space-map (kbd "s R") 'smerge-refine)
  (define-key space-map (kbd "s a") 'smerge-keep-all)
  (define-key space-map (kbd "s b") 'smerge-keep-base)
  (define-key space-map (kbd "s m") 'smerge-keep-mine)
  (define-key space-map (kbd "s n") 'smerge-next)
  (define-key space-map (kbd "s o") 'smerge-keep-other)
  (define-key space-map (kbd "s p") 'smerge-prev)
  (define-key space-map (kbd "s r") 'smerge-resolve))

(add-hook 'smerge-mode-hook 'my-smerge-bindings)

(use-package cuda-mode
:disabled t)

(add-to-list 'auto-mode-alist '("\\.cu\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cuh\\'" . c++-mode))

(use-package opencl-mode
:disabled t)

(use-package glsl-mode)

;; (use-package srefactor
;;   :ensure t)

;; (require 'srefactor)
;; (require 'srefactor-lisp)
;; (semantic-mode 1)
;; (define-key space-map (kbd "SPC R") 'srefactor-refactor-at-point)
;; (define-key space-map (kbd "SPC R") 'srefactor-refactor-at-point)

(setq indent-tabs-mode nil)

(defconst my-cc-style
      '("user"
	(c-basic-offset . 4)
	(c-offsets-alist
	 (innamespace . 0))))
(c-add-style "my-cc-style" my-cc-style)

(setq c-default-style
	      (quote
	       ((java-mode . "java")
		(awk-mode . "awk")
		(python-mode . "python")
		(cc-mode . "my-cc-style")
		(other . "user"))))
(setq-default tab-width 4)
(setq-default default-tab-width 4)

(use-package cmake-mode)

(use-package cmake-ide
             :config (cmake-ide-setup))

(defun set-cmake-ide-build-dir () 
  "sets cmake-build-dir variable to default-directory
  intended to be called from eshell to quickly set the cmake build directory"
  (setq cmake-build-dir default-directory))

(require 'rtags)
(setq rtags-display-current-error-as-tooltip t)
(rtags-enable-standard-keybindings evil-normal-state-map "SPC r")

(require 'helm-rtags)
(setq rtags-display-result-backend 'helm)

(require 'company-rtags)
(setq rtags-autostart-diagnostics t)
(setq rtags-completions-enabled t)
(push 'company-rtags company-backends)

(require 'flycheck-rtags)

(require 'ivy-rtags)

(use-package clang-format
             :config (define-key evil-normal-state-map (kbd "SPC c f") 'clang-format-region))

(setq python-shell-interpreter "ipython3")
(setq python-shell-interpreter-args "--simple-prompt -i")
(push "ipython3" python-shell-completion-native-disabled-interpreters)

(use-package ein)

(use-package realgud
:disabled t)

(use-package pdf-tools
             :config (pdf-tools-install))

(use-package paperless
	:config (custom-set-variables '(paperless-capture-directory "~/Documents/capture")
								  '(paperless-root-directory "/mnt/piland/sascha/documents/paperless")))
			
(require 'org-paperless)

(setq browse-url-generic-program "vivaldi-stable")
(setq browse-url-browser-function 'browse-url-generic)
