(require 'package)

(add-to-list 'package-archives
	     '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/"))

(add-to-list 'package-archives
	     '("marmalade" . "https://marmalade-repo.org/packages/"))

(package-initialize)

;; Exec path from shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


;; Cider mode
(add-hook 'clojure-mode-hook 'cider-mode)
(add-hook 'clojure-mode-hook '(lambda () (local-set-key (kbd "RET") 'newline-and-indent)))
(global-company-mode)
(add-hook 'cider-repl-mode-hook #'company-mode)
(add-hook 'cider-mode-hook #'company-mode)
(add-hook 'cider-mode-hook '(lambda () (local-set-key (kbd "RET") 'newline-and-indent)))

(show-paren-mode 1)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
(add-to-list 'custom-theme-load-path "~/.emacs.d/lib/monokai-theme")
(load-theme 'monokai t)
