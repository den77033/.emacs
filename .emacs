(global-set-key (kbd "C-c p") 'beginning-of-buffer)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "M-o") 'ace-window)

(setq inhibit-startup-message t)
(tool-bar-mode -1)
(tooltip-mode -1)
(scroll-bar-mode -1)
;;(set-fringe-style 10)
(menu-bar-mode -1)
(setq visible-bell t)
(global-display-line-numbers-mode)
(setq column-number-mode t)
;;(set-face-attribute 'default nil :font "DejaVu Sans Mono" :height 140)
(set-face-attribute 'default nil :font "Fira Code" :height 140)
;;(load-theme 'wombat)

(setq-default tab-width 2)
(setq-default evil-shift-width tab-width)
(setq-default indent-tabs-mode nil)

(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(use-package gruvbox-theme)
(load-theme 'gruvbox-dark-soft t)

(use-package command-log-mode)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

(use-package ace-window)
(use-package paren
  :config
  (set-face-attribute 'show-paren-match-expression nil :background "#363e4a")
  (show-paren-mode 1))

(use-package evil-nerd-commenter
  :bind ("M-/" . evilnc-comment-or-uncomment-lines))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (evil-nerd-commenter ace-window use-package gruvbox-theme doom-modeline command-log-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
