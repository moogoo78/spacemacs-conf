; quick map
(global-set-key (kbd "C-o") 'find-file)
(global-set-key (kbd "C-s") 'save-buffer)

(global-set-key (kbd "C-w") 'kill-buffer)
(global-set-key (kbd "C-l") 'goto-line)
(global-set-key (kbd "M-f") 'isearch-forward)
; like modern browser
(global-set-key (kbd "M-g") 'isearch-repeat-forward)
(global-set-key (kbd "M-G") 'isearch-repeat-backward)

(global-set-key (kbd "<C-next>") 'next-buffer)
(global-set-key (kbd "<C-prior>") 'previous-buffer) ;

;; qwerty qjk
(global-set-key (kbd "C-q") 'kill-region) ;  cut
(global-set-key (kbd "C-j") 'kill-ring-save) ;  copy
(global-set-key (kbd "C-k") 'yank) ; paste
(global-set-key (kbd "C-y") 'kill-line) ; change ctrl-y to kill line

(global-set-key (kbd "C-'") 'set-mark-command)
(global-set-key (kbd "C-.") "\C-a\C- \C-e\C-n\M-w\C-k") ; vim yyp
(global-set-key (kbd "C-,") "\C-a\C- \C-e\C-n\M-w") ; vim yy

(global-set-key [(control up)] 'beginning-of-buffer)
(global-set-key [(control down)] 'end-of-buffer)
(global-set-key (kbd "M-p") 'scroll-down)
(global-set-key (kbd "M-n") 'scroll-up)

(global-set-key [(control right)] 'next-buffer)
(global-set-key [(control left)] 'previous-buffer)

;(kbd "<C-next>")
;(kbd "<C-prior>")

;inspired:
; - http://xahlee.org/emacs/ergonomic_emacs_keybinding.html
(keyboard-translate ?\C-t ?\C-x)
(keyboard-translate ?\C-x ?\C-t)


(global-set-key (kbd "C-c k") 'elscreen-kill-screen-and-buffers)
(global-set-key (kbd "C-c c") 'kill-buffer-and-delete-window)

;(global-set-key (kbd "C-p") 'isearch-forward)

;(global-set-key (kbd "C-a") 'mark-whole-buffer);
(global-set-key (kbd "M-o") 'find-file-other-window)


