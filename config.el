

(global-linum-mode t) ; line number
(windmove-default-keybindings)      ; shift + 4way key jump windo
(setq dotspacemacs-additional-packages '(markdown-mode))

;; DX7 color like

;;base
(set-foreground-color "gray85")
(set-background-color "gray20")
(set-cursor-color "yellow1")
(set-face-background 'mouse "black")

;; donnot know
(set-face-foreground 'font-lock-warning-face "yellow")
(set-face-foreground 'font-lock-doc-face "yellow")
(set-face-foreground 'font-lock-preprocessor-face "yellow")
;(set-face-foreground 'font-lock-doc-string-face "yellow"); err
;(set-face-foreground 'font-lock-reference-face "yellow") err

;; comment
; (set-face-foreground 'font-lock-comment-face "forest green")
(set-face-foreground 'font-lock-comment-face "gray45")
;(set-face-foreground 'font-lock-comment-delimiter-face "gray35")

;; constant
(set-face-foreground 'font-lock-constant-face "gray50")
;; string
(set-face-foreground 'font-lock-string-face "yellow green")
;; keyword
(set-face-foreground 'font-lock-keyword-face "SeaGreen3")
(make-face-bold 'font-lock-keyword-face)
;; type
(set-face-foreground 'font-lock-type-face "dark orange")
;; variable
(set-face-foreground 'font-lock-variable-name-face "light coral")
;; function
(set-face-foreground 'font-lock-function-name-face "steel blue")
(make-face-bold 'font-lock-function-name-face)
;; highlight (current line)
(set-face-background 'highlight "red4")
;; select region
(set-face-background 'region "MediumPurple4")

;; search
(set-face-foreground 'isearch "white")
(set-face-background 'isearch "blue")

;; parren
;(set-face-background 'show-paren-match-face (face-background 'default))
;(set-face-foreground 'show-paren-match-face "#def")
;(set-face-attribute 'show-paren-match-face nil :weight 'extra-bold)

;(set-face-background 'trailing-whitespace "plum")


;;;; 2. ハイライト関係
;;; 2-1. global font lockを用いるか
;(setq font-lock-maximum-decoration t)
;(global-font-lock-mode t)





;;;; 3. 対応する括弧をハイライト表示する
;(show-paren-mode t)
;(setq show-paren-style 'mixed)
;; マッチした場合の色
;(set-face-background 'show-paren-match-face "RoyalBlue1")
;(set-face-foreground 'show-paren-match-face "black")
;; マッチしていない場合の色
;(set-face-background 'show-paren-mismatch-face "Red")
;(set-face-foreground 'show-paren-mismatch-face "black")



