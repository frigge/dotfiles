(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(c-basic-offset 4)
 '(c-default-style
   (quote
    ((java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(column-highlight-mode nil)
 '(company-auto-complete t)
 '(company-backends
   (quote
    (company-bbdb company-nxml company-css company-eclim company-semantic company-clang company-xcode company-cmake company-capf
                  (company-dabbrev-code company-gtags company-etags company-keywords)
                  company-oddmuse company-files company-dabbrev company-irony)))
 '(completion-on-separator-character t)
 '(ctags-update-command "ctags")
 '(ctags-update-delay-seconds 10)
 '(ctags-update-other-options
   (quote
    ("--fields=+iaSt" "--extra=+q" "--exclude='*.elc'" "--exclude='*.class'" "--exclude='.git'" "--exclude='.svn'" "--exclude='SCCS'" "--exclude='RCS'" "--exclude='CVS'" "--exclude='EIFGEN'" "-R" "-e")))
 '(custom-buffer-indent 4)
 '(custom-enabled-themes (quote (solarized-light)))
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(evil-jumper-mode t)
 '(evil-mode t)
 '(evil-visual-mark-mode nil)
 '(flycheck-clang-language-standard "c++14")
 '(global-auto-complete-mode t)
 '(global-company-mode t)
 '(global-ede-mode t)
 '(global-evil-search-highlight-persist t)
 '(global-evil-surround-mode t)
 '(global-evil-visualstar-mode t)
 '(global-flycheck-mode t)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(global-visual-line-mode t)
 '(global-wakatime-mode t)
 '(global-whitespace-mode t)
 '(global-whitespace-newline-mode t)
 '(guide-key-mode t)
 '(guide-key/guide-key-sequence t)
 '(helm-lisp-fuzzy-completion t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(magit-use-overlays nil)
 '(menu-bar-mode nil)
 '(org-agenda-files
   (quote
    ("~/informatik_master/einfuehrung_in_die_logik/summary/summary.org")))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.org/packages/"))))
 '(projectile-global-mode t)
 '(rcirc-server-alist
   (quote
    (("irc.deepirc.net" :nick "frigge" :port 6667 :channels
      ("#oal"))
     ("irc.freenode.net" :nick "frigge" :channels
      ("#rcirc")))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(wakatime-api-key "f387f9d7-325c-4320-bb16-a461420a7f4e")
 '(wakatime-cli-path "/usr/local/bin/wakatime")
 '(whitespace-display-mappings
   (quote
    ((tab-mark 9
               [187 9]
               [92 9])
     (newline-mark 10
                   [172 10])))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#fdf6e3" :foreground "#657b83" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 110 :width normal :foundry "unknown" :family "Consolas"))))
 '(col-highlight ((t (:background "#eee8d5"))))
 '(whitespace-empty ((t (:inverse-video nil))))
 '(whitespace-indentation ((t (:foreground "light gray" :weight light)))))

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-set-key (kbd "C-c l") 'px-toggle)
(global-set-key (kbd "<f5>") 'evil-make)
(global-set-key (kbd "C-x t") 'helm-mt)
(global-set-key (kbd "<f4>") 'ff-find-other-file)
(evil-ex-define-cmd "ta" 'evil-etags-select-find-tag)

(require 'powerline)
(powerline-default-theme)

(require 'cedet)
(require 'evil-org)

(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
