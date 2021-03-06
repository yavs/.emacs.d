;;Kick up the garbage collection threshold. The let expressions will only bind it for the current scope and then everything will go back to normal
(let ((gc-cons-threshold most-positive-fixnum)
	  (file-name-handler-alist nil))

  ;; Repos to pull packages from
  (require 'package)
  (setq package-enable-at-startup nil)
  (add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
  (package-initialize)


  ;;Org file which contains all of the setup
  (org-babel-load-file (expand-file-name "~/.emacs.d/newInit.org")))

;;-------------------------------------------------- Don't touch below --------------------------------------------------------
;; DO NOT wrap this in the parentheses for the garbage collection threshold. Any time a new package is installed, it will not be recognized and emacs will create another identical one.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-require-match nil)
 '(custom-safe-themes
   '("10461a3c8ca61c52dfbbdedd974319b7f7fd720b091996481c8fb1dded6c6116" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "fe666e5ac37c2dfcf80074e88b9252c71a22b6f5d2f566df9a7aa4f9bea55ef8" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "80365dd15f97396bdc38490390c23337063c8965c4556b8f50937e63b5e9a65c" "49ec957b508c7d64708b40b0273697a84d3fee4f15dd9fc4a9588016adee3dad" "256bd513a9875cd855077162cdfee8d75b0ad7e18fe8b8cbc10412561fbef892" "43c808b039893c885bdeec885b4f7572141bd9392da7f0bd8d8346e02b2ec8da" "84da7b37214b4ac095a55518502dfa82633bee74f64daf6e1785322e77516f96" "f8fb7488faa7a70aee20b63560c36b3773bd0e4c56230a97297ad54ff8263930" "f8067b7d0dbffb29a79e0843797efabdf5e1cf326639874d8b407e9b034136a4" "2b9dc43b786e36f68a9fd4b36dd050509a0e32fe3b0a803310661edb7402b8b6" "9129c2759b8ba8e8396fe92535449de3e7ba61fd34569a488dd64e80f5041c9f" "585942bb24cab2d4b2f74977ac3ba6ddbd888e3776b9d2f993c5704aa8bb4739" "97965ccdac20cae22c5658c282544892959dc541af3e9ef8857dbf22eb70e82b" "fc7fd2530b82a722ceb5b211f9e732d15ad41d5306c011253a0ba43aaf93dccc" "a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "1c57d23235bcdb51a2f3f831dc5f0eecedcd229e50b774002cab08df9ef047dc" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" "886fe9a7e4f5194f1c9b1438955a9776ff849f9e2f2bbb4fa7ed8879cdca0631" "0f1733ad53138ddd381267b4033bcb07f5e75cd7f22089c7e650f1bb28fc67f4" "562c2a97808ab67d71c02d50f951231e4a6505f4014a01d82f8d88f5008bbe88" "a9d67f7c030b3fa6e58e4580438759942185951e9438dd45f2c668c8d7ab2caf" "ef07cb337554ffebfccff8052827c4a9d55dc2d0bc7f08804470451385d41c5c" "9f08dacc5b23d5eaec9cccb6b3d342bd4fdb05faf144bdcd9c4b5859ac173538" "53d2ec6a3c25d35869abcacfe5c061b280ca71cb473639ea569feca978a7d8a2" "bd7b7c5df1174796deefce5debc2d976b264585d51852c962362be83932873d9" "ae0193882f194278ed9613b2127ef8d913762a1ff6b5887248035bf584adc9aa" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "7e78a1030293619094ea6ae80a7579a562068087080e01c2b8b503b27900165c" "59e82a683db7129c0142b4b5a35dbbeaf8e01a4b81588f8c163bd255b76f4d21" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "151bde695af0b0e69c3846500f58d9a0ca8cb2d447da68d7fbf4154dcf818ebc" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "100e7c5956d7bb3fd0eebff57fde6de8f3b9fafa056a2519f169f85199cc1c96" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))
 '(eclim-eclipse-dirs '("/usr/lib/eclipse"))
 '(eclim-executable "/usr/lib/eclipse/eclim")
 '(evil-search-module 'evil-search)
 '(lsp-prefer-flymake nil)
 '(magit-todos-mode t nil (magit-todos))
 '(org-agenda-prefix-format
   '((agenda . " %i %-12:c%?-12t% s")
     (todo . " %i %-12:c%?-12t")
     (tags . " %i %-12:c")
     (search . " %i %-12:c")))
 '(org-super-agenda-mode t)
 '(package-selected-packages
   '(polymode vterm page-break-lines ace-link kaoline-themes helm-make counsel-projectile edit-indirect doom-themes request org-plus-contrib all-the-icons skewer-mode js2-refactor js2-mode py-autopep8 lsp-mode flycheck-pos-tip flycheck markdown-mode treemacs company-math projectile yasnippet-snippets hydra rustic olivetti aggressive-indent poet-theme base16-theme gruvbox-theme atom-one-dark-theme haskell-mode evil-matchit evil-surround dap-mode lsp-origami helm-c-yasnippet rainbow-delimiters raindow-delimiters evil-collection kaolin-themes wttrin lsp-python-ms abyss-theme toc-org doom-modeline helm-rg srcery-theme geiser cyberpunk-2019-theme pipenv ms-python org-journal spacemacs-themes cyberpunk-theme spacemacs-theme annotate evil-easymotion evil-lispy evil-magit evil-paredit flycheck-golangci-lint flycheck-haskell flycheck-rust go-gopath go-guru go-rename godoctor minibuffer-cua minibuffer-line company-c-headers lsp-haskell lsp-rust magit-todos go-mode go-snippets lsp ccls company-shell company-box yasnippet org dashboard org-board emacs-cquery flycheck-irony irony-eldoc elfeed elfeed-org org-bullets org-download neotree ob-go ob-typescript helm-org-rifle helm-dictionary anki-editor solarized-theme ob-async esup org-noter tide nov auctex company-auctex ob-rust origami dired-filter dired-ranger cquery tomatinho helm-spotify-plus monokai-theme company-lsp git-gutter-fringe+ lsp-intellij lsp-ui magit helm-projectile indium company-emacs-eclim meghanada org-super-agenda slime-company web-mode use-package treemacs-evil rjsx-mode pdf-tools pandoc-mode nasm-mode intero helm evil-nerd-commenter evil-leader elpy company-web company-statistics company-irony common-lisp-snippets))
 '(pdf-cache-image-limit 15)
 '(pdf-cache-prefetch-delay 0.7)
 '(pdf-occur-global-minor-mode t)
 '(pdf-view-display-size 'fit-width)
 '(pdf-view-use-imagemagick t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
(put 'narrow-to-region 'disabled nil)
