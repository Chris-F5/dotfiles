;; MELPA
;; -----

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
;; (package-refresh-contents)

;; EVIL
;; ----

(use-package evil
  :ensure t
  :init
  (setq evil-want-C-i-jump nil)
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :after evil
  :ensure t
  :config
  (evil-collection-init))

;; MU4E
;; ----

(setq user-mail-address "christopher.lang.256@gmail.com")
(setq user-full-name "Christopher Lang")

(use-package mu4e
  :ensure nil
  :config

  ;; Required to make work with mbsync.
  (setq mu4e-change-filenames-when-moving t)

  (setq mu4e-update-interval (* 5 60))
  (setq mu4e-get-mail-command "mbsync -a")

  (setq mu4e-drafts-folder "/gmail/draft")
  (setq mu4e-sent-folder   "/gmail/sent")
  (setq mu4e-refile-folder "/gmail/archive")
  (setq mu4e-trash-folder  "/gmail/bin")

  (setq mu4e-maildir-shortcuts
	'(("/gmail/inbox",   ?i)
	  ("/gmail/archive", ?a)
	  ("/gmail/spam",    ?p)
	  ("/gmail/bin",     ?b)
	  ("/gmail/draft",   ?d)
	  ("/gmail/sent",    ?s)
	  ))
  )

;; SMTP
;; ----

(setq sendmail-program "/bin/msmtp"
      message-sendmail-f-is-evil t
      message-sendmail-extra-arguments '("--read-envelope-from")
      send-mail-function 'smtpmail-send-it
      message-send-mail-function 'message-send-mail-with-sendmail)

;; MY CONFIGURATION
;; ----------------

; Use windows key for meta.
(setq x-super-keysym 'meta)

;; Custom (auto generated)
;; -----------------------

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil-collection evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
