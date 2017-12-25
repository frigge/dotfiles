(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
	(package-refresh-contents)
    (package-install 'use-package))
(setq use-package-always-ensure t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(my-current-theme (symbol-value (quote my-light-theme)))
 '(org-agenda-files
   (quote
	("/home/frigge/src/cuda_raytracer/report/projectarbeit.org")))
 '(package-selected-packages
   (quote
	(csv-mode notmuch which-key wgrep-ag use-package solarized-theme smart-tabs-mode realgud python-mode org-ref org-projectile org-pomodoro org-plus-contrib org-pdfview org-caldav opencl-mode offlineimap ob-ipython magit helm-rtags google-c-style glsl-mode git-gutter flycheck-rtags evil-visualstar evil-surround evil-search-highlight-persist evil-quickscope evil-org evil-numbers evil-commentary ein counsel company-rtags cmake-mode cmake-ide clang-format beacon ag ace-window)))
 '(safe-local-variable-values
   (quote
	((eval setq cmake-ide-build-dir
		   (concat
			(projectile-project-root)
			"build/")))))
 '(solarized-dark (quote solarized-dark) t)
 '(solarized-light (quote solarized-light) t)
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 98 :foundry "DAMA" :family "Consolas for Powerline")))))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
