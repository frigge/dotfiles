(package-initialize)
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
     (other . "gnu"))))
 '(column-highlight-mode nil)
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
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("38ba6a938d67a452aeb1dada9d7cdeca4d9f18114e9fc8ed2b972573138d4664" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(evil-jumper-mode t)
 '(evil-mode t)
 '(evil-visual-mark-mode nil)
 '(flycheck-clang-language-standard "c++14")
 '(global-auto-complete-mode t)
 '(global-auto-revert-mode t)
 '(global-company-mode nil)
 '(global-ede-mode t)
 '(global-evil-search-highlight-persist t)
 '(global-evil-surround-mode t)
 '(global-evil-visualstar-mode t)
 '(global-flycheck-mode t)
 '(global-git-gutter+-mode t)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(global-visual-line-mode t)
 '(global-wakatime-mode t)
 '(global-whitespace-mode t)
 '(global-whitespace-newline-mode t)
 '(gud-tooltip-mode t)
 '(guide-key-mode t)
 '(guide-key/guide-key-sequence t)
 '(helm-lisp-fuzzy-completion t)
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(line-number-mode t)
 '(magit-diff-use-overlays nil)
 '(magit-use-overlays nil)
 '(menu-bar-mode nil)
 '(org-agenda-files (quote ("~/my_agenda/agenda.org")))
 '(org-babel-load-languages (quote ((python . t) (emacs-lisp . t))))
 '(org-src-fontify-natively t)
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
 '(rtags-autostart-diagnostics t)
 '(rtags-completions-enabled t)
 '(rtags-display-current-error-as-tooltip t)
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
                   [172 10]))))
 '(whitespace-style
   (quote
    (face tabs spaces trailing space-before-tab newline indentation empty space-after-tab space-mark tab-mark newline-mark))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#272822" :foreground "#F8F8F2" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width condensed :foundry "unknown" :family "Consolas"))))
 '(whitespace-line ((t nil))))

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'ido-find-file)
(global-set-key (kbd "C-x b") 'ido-switch-buffer)
(global-set-key (kbd "C-c l") 'px-toggle)
(global-set-key (kbd "<f5>") 'evil-make)
(global-set-key (kbd "C-x t") 'helm-mt)
(global-set-key (kbd "<f4>") 'ff-find-other-file)
(global-set-key (kbd "C-x o") 'ace-window)
(evil-ex-define-cmd "ta" 'evil-etags-select-find-tag)

(require 'cedet)
(require 'evil-org)
(require 'evil-numbers)
(require 'rtags)
(require 'popup)

(rtags-enable-standard-keybindings)

(define-key evil-normal-state-map (kbd "+") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "-") 'evil-numbers/dec-at-pt)
(define-key evil-visual-state-map (kbd "+") 'evil-numbers/inc-at-pt)
(define-key evil-visual-state-map (kbd "-") 'evil-numbers/dec-at-pt)

(server-start)
