;; via: http://steve.yegge.googlepages.com/my-dot-emacs-file
;(defun rename-file-and-buffer (new-name)
(defun rename-this-file (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (if (not filename)
        (message "Buffer '%s' is not visiting a file!" name)
      (if (get-buffer new-name)
          (message "A buffer named '%s' already exists!" new-name)
        (progn
          (rename-file name new-name 1)
          (rename-buffer new-name)
          (set-visited-file-name new-name)
          (set-buffer-modified-p nil))))))


;; from Xah Lee http://ergoemacs.org/emacs/elisp_count-region.html
(defun my-count-words-region (posBegin posEnd)
  "Print number of words and chars in region."
  (interactive "r")
  (message "Counting …")
  (save-excursion
    (let (wordCount charCount)
      (setq wordCount 0)
      (setq charCount (- posEnd posBegin))
      (goto-char posBegin)
      (while (and (< (point) posEnd)
                  (re-search-forward "\\w+\\W*" posEnd t))
        (setq wordCount (1+ wordCount)))

      (message "Words: %d. Chars: %d." wordCount charCount)
      )))

(defun mg-close-and-find(fname)
  "close current and find new buffer"
  (kill-buffer (buffer-name)) ; kill previous buffer
  (interactive "Ffind-file: ")
  (switch-to-buffer (find-file-noselect fname)))


(defun mg-insert-current-dtime ()
  "Insert current date"
  (interactive)
  (insert (format-time-string "%Y-%m-%d %H:%M")))


(defun mg-run-calc (d hh mm ss)
  "running calculator"
  (interactive "nDistance (km): \nnHours: \nnMinutes: \nnSeconds: ")
  (let ((km (* d 1000))
        (tm (+ (* hh 3600) (* mm 60) ss)))
    (setq hkm (/ tm d 60.0))
    (setq hkm-m (/ tm d 60))
    (setq hkm-s (% (/ tm d) 60))
                                        ;(message "%d" tm)    
    (setq mpr (/ tm d 2.5)) ;;沒有進位
    (setq mpr-s (mod mpr 60))
    (message "%d" tm)
    (message "%.2fkm, %02d:%02d:%02d => %.2f m/km (%dm%ds), %.2f s/round (%dm%ds)" d hh mm ss hkm hkm-m hkm-s mpr (/ mpr 60) mpr-s)
    )
  )

(defun init-py ()
  (interactive)
  (insert "#!/usr/bin/env python\n# -.- coding: utf-8 -.-\n"))


(define-skeleton jj-base
  "Insert Jinja2 template base syntax"
  ""
  > "{% extends \"base.html\" %}" \n \n \n
  > "{% block main %}" \n
  > "{% endblock %}")

(define-skeleton jj-block
  "Insert Jinja2 template block syntax"
  ""
  > "{% block " (skeleton-read "block name: ") " %}" \n
  > "{% endblock %}")

(define-skeleton jj-loop
  "Insert Jinja2 template loop syntax"
  ""
  ;(setq is_list (skeleton-read "list?: "))
  ;> (if (string= is_list "ul") "<ul>") \n  
  > "{% for i in " (skeleton-read "name of the rows: ") " %}" \n
  > "{{ i }}" \n
  > "{% endfor %}")

(define-skeleton jj-loop-ul
  "Insert Jinja2 template loop syntax"
  ""
  > "<ul>" \n
  > "{% for i in " (skeleton-read "name of the rows: ") " %}" \n
  > "<li>{{ i }}</li>" \n
  > "{% endfor %}" \n
  > "</ul>")
