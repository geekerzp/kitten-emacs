;;; flycheck --- setup

;;; Commentary:

;;; Code:
(kitten/require-packages '(flycheck))

(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

;; checker for python mode
(when (derived-mode-p 'python-mode)
  (flycheck-select-checker 'python-flake8))

;; checker for ruby code
(when (derived-mode-p 'ruby-mode)
  (flycheck-select-checker 'rubocop))

(provide 'kitten-flycheck)
;;; kitten-flycheck.el ends here