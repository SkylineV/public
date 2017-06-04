
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defun surround-with-string ()
  (interactive)
  (save-excursion
    (goto-char (region-beginning))
    (insert "'"))
  (goto-char (region-end))
  (insert "'"))

(set-language-environment "UTF-8")

(global-set-key (kbd "<f9>") 'hs-toggle-hiding)
(global-set-key (kbd "<f8>") 'surround-with-string)

(add-to-list 'load-path "~/emacs/emacs-webkit")

(add-to-list 'load-path "~/emacs/go-mode.el")
(require 'go-mode)

;;(add-to-list 'load-path "c:/emacs/neotree")
;;(require 'neotree)
;;(global-set-key [f10] 'neotree-toggle)

;;(add-to-list 'load-path "c:/emacs/columnmarker")
;;(require 'column-marker)
;;(add-hook 'foo-mode-hook (lambda () (interactive) (column-marker-1 80)))
;;(global-set-key [?\C-c ?m] 'column-marker-2)

;;(add-to-list 'load-path "c:/emacs/phpplus")
;;(require 'php+-mode)
;;(php+-mode-setup)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(confirm-kill-emacs (quote y-or-n-p))
 '(custom-enabled-themes (quote (deeper-blue)))
 '(default-frame-alist (quote ((width . 80))))
 '(global-linum-mode t)
 '(display-time-mode t)
 '(hs-minor-mode t t)
 '(inhibit-startup-screen t)
 '(initial-frame-alist (quote ((width . 80))))
 '(js2-dynamic-idle-timer-adjust 5000)
 '(mouse-wheel-progressive-speed nil)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("MELPA" . "http://melpa.org/packages/"))))
 '(package-enable-at-startup nil)
 '(package-selected-packages (quote (## js2-mode php-mode)))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-error ((t (:foreground "red"))))
 '(js2-function-call ((t (:inherit default :foreground "orchid")))))
