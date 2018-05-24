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
 '(custom-safe-themes
   (quote
	("e4c8810d9ab925567a69c11d5c95d198a4e7d05871453b2c92c020712559c4c1" "065efdd71e6d1502877fd5621b984cded01717930639ded0e569e1724d058af8" default)))
 '(my-current-theme (symbol-value (quote my-light-theme)))
 '(org-agenda-files
   (quote
	("/home/frigge/src/cuda_raytracer/TODO.org" "/home/frigge/src/cuda_raytracer/task.org")))
 '(package-selected-packages
   (quote
	(xresources-theme rainbow-mode counsel-etags org-download org-noter htmlize ox-reveal org-reveal csv-mode notmuch which-key wgrep-ag use-package solarized-theme smart-tabs-mode realgud python-mode org-ref org-projectile org-pomodoro org-plus-contrib org-pdfview org-caldav opencl-mode offlineimap ob-ipython magit helm-rtags google-c-style glsl-mode git-gutter flycheck-rtags evil-visualstar evil-surround evil-search-highlight-persist evil-quickscope evil-org evil-numbers evil-commentary ein counsel company-rtags cmake-mode cmake-ide clang-format beacon ag ace-window)))
 '(safe-local-variable-values
   (quote
	((org-reveal-title-slide . "<h2>Narratives of Space and Time</h2><br><h3>(Envisioning Information by E. R. Tufte)</h3><br>von %a")
	 (org-reveal-title-slide . "<h1>Narrations of Space and Time</h1><br><h2>(Envisioning Information by E. R. Tufte)</h2><br>von %a")
	 (org-reveal-title-slide . "%t<br>von %a")
	 (eval setq cmake-ide-build-dir
		   (concat
			(projectile-project-root)
			"build/")))))
 '(solarized-dark (quote solarized-dark) t)
 '(solarized-light (quote solarized-light) t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
