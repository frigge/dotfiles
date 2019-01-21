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
(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
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
 '(mu4e-view-show-images t)
 '(org-agenda-files
   (quote
	("/mnt/piland/sascha/documents/todo.org" "/home/frigge/src/cuda_raytracer/TODO.org" "/home/frigge/src/cuda_raytracer/task.org")))
 '(package-selected-packages
   (quote
	(srefactor org-plus-contrib evil-string-inflection paperless mu4e xresources-theme which-key wgrep-ag use-package smart-tabs-mode rainbow-mode ox-reveal org-ref org-projectile org-pomodoro org-pdfview org-noter org-download org-caldav ob-ipython magit glsl-mode git-gutter flycheck evil-visualstar evil-surround evil-quickscope evil-org evil-numbers evil-commentary ein csv-mode counsel-etags company cmake-mode cmake-ide clang-format beacon ag ace-window)))
 '(paperless-capture-directory "~/Documents/capture")
 '(paperless-root-directory "/mnt/piland/sascha/documents/paperless")
 '(safe-local-variable-values
   (quote
	((eval setq cmake-ide-build-dir
		   (concat
			(projectile-project-root)
			"build/"))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
