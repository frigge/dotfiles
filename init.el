(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
	(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ace-window-display-mode t)
 '(blink-cursor-mode nil)
 '(c-basic-offset 4)
 '(c-default-style
   (quote
    ((java-mode . "java")
     (awk-mode . "awk")
     (python-mode . "python")
     (other . "stroustrup"))))
 '(ctags-update-command "ctags")
 '(ctags-update-delay-seconds 10)
 '(ctags-update-other-options
   (quote
    ("--fields=+iaSt" "--extra=+q" "--exclude='*.elc'" "--exclude='*.class'" "--exclude='.git'" "--exclude='.svn'" "--exclude='SCCS'" "--exclude='RCS'" "--exclude='CVS'" "--exclude='EIFGEN'" "-R" "-e")))
 '(custom-buffer-indent 4)
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(flycheck-clang-language-standard "c++14")
 '(global-auto-revert-mode t)
 '(global-flycheck-mode t)
 '(global-hl-line-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(menu-bar-mode nil)
 '(org-agenda-files
   (quote
    ("~/informatik_master/padi/notes.org" "~/informatik_master/seminar/notes.org" "~/informatik_master/algorithm_engineering/notes.org" "~/informatik_master/echtzeitcomputergrafik/notes.org" "~/informatik_master/multimedia_database/notes.org" "~/informatik_master/3dcomputersehen/notes.org" "~/my_agenda/agenda.org")))
 '(org-babel-load-languages (quote ((python . t) (emacs-lisp . t))))
 '(org-caldav-calendar-id "orgmode-agenda" t)
 '(org-caldav-inbox "~/my_agenda/caldav.org" t)
 '(org-caldav-select-tags (quote ("AGENDA")) t)
 '(org-caldav-url
   "http://frgcloud.selfhost.eu/owncloud/remote.php/caldav/calendars/piland" t)
 '(org-latex-pdf-process
   (quote
    ("pdflatex -interaction nonstopmode -output-directory %o %f" "bibtex %b" "pdflatex -interaction nonstopmode -output-directory %o %f" "pdflatex -interaction nonstopmode -output-directory %o %f")))
 '(org-src-fontify-natively t)
 '(rtags-autostart-diagnostics t)
 '(rtags-completions-enabled t)
 '(rtags-display-current-error-as-tooltip t)
 '(rtags-use-helm t)
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(smtpmail-smtp-server "groupware.tu-bs.de")
 '(smtpmail-smtp-service 465)
 '(smtpmail-stream-type (quote ssl))
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(user-full-name "Sascha Fricke")
 '(user-mail-address "Sascha Fricke <s.fricke@tu-bs.de>"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 100 :foundry "DAMA" :family "Consolas for Powerline")))))
