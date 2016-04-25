(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-expand-on-auto-complete nil)
 '(ace-window-display-mode t)
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#657b83" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#fdf6e3"))
 '(blink-cursor-mode nil)
 '(c-basic-offset 4)
 '(c-default-style
   (quote
    ((java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu")
     ("#B4C342" . 20)
     ("#69CABF" . 30)
     ("#69B7F0" . 50)
     ("#DEB542" . 60)
     ("#F2804F" . 70)
     ("#F771AC" . 85)
     ("#eee8d5" . 100))))
 '(company-backends
   (quote
    (company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-cmake company-capf
                  (company-dabbrev-code company-gtags company-etags company-keywords)
                  company-oddmuse company-files company-dabbrev company-irony)))
 '(compilation-message-face (quote default))
 '(completion-on-separator-character t)
 '(ctags-update-command "ctags")
 '(ctags-update-delay-seconds 10)
 '(ctags-update-other-options
   (quote
    ("--fields=+iaSt" "--extra=+q" "--exclude='*.elc'" "--exclude='*.class'" "--exclude='.git'" "--exclude='.svn'" "--exclude='SCCS'" "--exclude='RCS'" "--exclude='CVS'" "--exclude='EIFGEN'" "-R" "-e")))
 '(custom-buffer-indent 4)
 '(evil-mode t)
 '(evil-visual-mark-mode nil)
 '(flycheck-clang-language-standard "c++14")
 '(global-auto-revert-mode t)
 '(global-evil-quickscope-mode t)
 '(global-evil-search-highlight-persist t)
 '(global-evil-surround-mode t)
 '(global-evil-visualstar-mode t)
 '(global-flycheck-mode t)
 '(global-git-gutter+-mode t)
 '(global-hl-line-mode t)
 '(hl-bg-colors
   (quote
    ("#DEB542" "#F2804F" "#FF6E64" "#F771AC" "#9EA0E5" "#69B7F0" "#69CABF" "#B4C342")))
 '(hl-fg-colors
   (quote
    ("#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3" "#fdf6e3")))
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(magit-diff-use-overlays nil)
 '(magit-use-overlays nil)
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files
   (quote
    ("~/informatik_master/padi/notes.org" "~/informatik_master/seminar/notes.org" "~/informatik_master/algorithm_engineering/notes.org" "~/informatik_master/echtzeitcomputergrafik/notes.org" "~/informatik_master/multimedia_database/notes.org" "~/informatik_master/3dcomputersehen/notes.org" "~/my_agenda/agenda.org")))
 '(org-babel-load-languages (quote ((python . t) (emacs-lisp . t))))
 '(org-src-fontify-natively t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(pos-tip-background-color "#eee8d5")
 '(pos-tip-foreground-color "#586e75")
 '(projectile-global-mode t)
 '(rcirc-server-alist
   (quote
    (("irc.deepirc.net" :nick "frigge" :port 6667 :channels
      ("#oal"))
     ("irc.freenode.net" :nick "frigge" :channels
      ("#rcirc")))))
 '(rtags-autostart-diagnostics t)
 '(rtags-completions-enabled t)
 '(rtags-display-current-error-as-tooltip t)
 '(scroll-bar-mode nil)
 '(send-mail-function (quote smtpmail-send-it))
 '(show-paren-mode t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#eee8d5" 0.2))
 '(smtpmail-smtp-server "groupware.tu-bs.de")
 '(smtpmail-smtp-service 465)
 '(smtpmail-stream-type (quote ssl))
 '(tab-width 4)
 '(term-default-bg-color "#fdf6e3")
 '(term-default-fg-color "#657b83")
 '(tool-bar-mode nil)
 '(user-full-name "Sascha Fricke")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16"))))
 '(vc-annotate-very-old-color nil)
 '(wakatime-api-key "f387f9d7-325c-4320-bb16-a461420a7f4e")
 '(wakatime-cli-path "/usr/local/bin/wakatime")
 '(weechat-color-list
   (quote
    (unspecified "#fdf6e3" "#eee8d5" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#657b83" "#839496")))
 '(whitespace-display-mappings
   (quote
    ((tab-mark 9
               [187 9]
               [92 9])
     (newline-mark 10
                   [172 10])))))

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'ido-find-file)
(global-set-key (kbd "C-x b") 'ido-switch-buffer)
(global-set-key (kbd "C-c l") 'px-toggle)
(global-set-key (kbd "<f5>") 'evil-make)
(global-set-key (kbd "C-x t") 'helm-mt)
(global-set-key (kbd "<f4>") 'ff-find-other-file)
(global-set-key (kbd "C-x o") 'ace-window)

(require 'cedet)
(require 'evil-org)
(require 'evil-numbers)
(require 'evil-quickscope)
(require 'rtags)
(require 'popup)

(rtags-enable-standard-keybindings)

(define-key evil-normal-state-map (kbd "+") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "-") 'evil-numbers/dec-at-pt)
(define-key evil-visual-state-map (kbd "+") 'evil-numbers/inc-at-pt)
(define-key evil-visual-state-map (kbd "-") 'evil-numbers/dec-at-pt)

(require 'ox-latex)
(add-to-list
 'org-latex-classes
 '("dinbrief"
   "\\documentclass[12pt]{dinbrief}
\[DEFAULT-PACKAGES]
\[PACKAGES]
\[EXTRA]"))


(setq org-caldav-url "http://frgcloud.selfhost.eu/owncloud/remote.php/caldav/calendars/piland")
(setq org-caldav-calendar-id "orgmode-agenda")
(setq org-caldav-select-tags '("AGENDA"))
(setq org-caldav-inbox "~/my_agenda/caldav.org")
(setq org-caldav-files '("~/informatik_master/3dcomputersehen/notes.org"
                         "~/informatik_master/seminar/notes.org"
                         "~/informatik_master/algorithm_engineering/notes.org"
                         "~/informatik_master/echtzeitcomputergrafik/notes.org"
                         "~/informatik_master/padi/notes.org"
                         "~/informatik_master/multimedia_database/notes.org"))

;; bigger latex fragment
(plist-put org-format-latex-options :scale 1.5)

(provide 'init)
(require 'cmake-ide)
(define-key c-mode-base-map (kbd "<C-tab>") (function company-complete))
;;; init.el ends here
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
