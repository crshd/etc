;; Groups
(dotimes (i 9)
  (define-key *top-map* (kbd (format nil "s-~A" (1+ i)))
    (format nil "go-group ~A" (1+ i)))
  (define-key *top-map* (kbd (format nil "s-M-~A" (1+ i)))
    (format nil "gmove ~A" (1+ i))))

;; Frames
(loop for (vi-key name) in '(("k" "up")
                             ("j" "down")
                             ("h" "left")
                             ("l" "right"))
      do (let ((key-combo (format nil "s-~A" vi-key))
               (shifted-key-combo (format nil "s-~A" (string-upcase vi-key))))
           (define-key *top-map* (kbd key-combo)
             (format nil "move-focus ~A" name))
           (define-key *top-map* (kbd shifted-key-combo)
             (format nil "move-window ~A" name))))

;; Top-map
(define-key *top-map* (kbd "s-q")        "delete")
(define-key *top-map* (kbd "s-R")        "loadrc")
(define-key *top-map* (kbd "s-Q")        "restart")
(define-key *top-map* (kbd "s-TAB")      "pull-hidden-next")
(define-key *top-map* (kbd "s-t")        "tmux")
(define-key *top-map* (kbd "s-v")        "logmenu")
(define-key *top-map* (kbd "s-m")        "pimpdmenu")
(define-key *top-map* (kbd "s-RET")      (format nil "exec ~A" *terminal*))
(define-key *top-map* (kbd "Print")      (format nil "exec ~A/zenscrupload"    (getenv "BIN_HOME")))
(define-key *top-map* (kbd "s-Print")    (format nil "exec ~A/zenscrupload -s" (getenv "BIN_HOME")))

;; Multimedia Keys
(define-key *top-map* (kbd "XF86AudioPlay")        "exec mpc toggle")
(define-key *top-map* (kbd "XF86AudioNext")        "exec mpc next")
(define-key *top-map* (kbd "XF86AudioPrev")        "exec mpc prev")
(define-key *top-map* (kbd "XF86AudioStop")        "exec mpc stop")
(define-key *top-map* (kbd "XF86AudioMedia")       "exec mpc clear; pimpd2 -ra 10 | pimpd2 -af")

(define-key *top-map* (kbd "XF86AudioLowerVolume") "exec dvol.sh -d 5")
(define-key *top-map* (kbd "XF86AudioRaiseVolume") "exec dvol.sh -i 5")
(define-key *top-map* (kbd "XF86AudioMute")        "exec dvol.sh -t")

(define-key *top-map* (kbd "C-Insert") "send-selection")

;; Vim-ify menu
(setf *menu-map*
      (let ((m (make-sparse-keymap)))
        (define-key m (kbd "k")   'menu-up)
        (define-key m (kbd "j")   'menu-down)
        (define-key m (kbd "SPC") 'menu-finish)
        (define-key m (kbd "RET") 'menu-finish)
        (define-key m (kbd "ESC") 'menu-abort)
        m))

(defvar *group-map* nil
  "Keymap for doing stuffs to groups")
(setf *group-map*
      (let ((m (make-sparse-keymap)))
        (define-key m (kbd "n")   "gnew")
        (define-key m (kbd "f")   "gnew-float")
        (define-key m (kbd "N")   "gnewbg")
        (define-key m (kbd "F")   "gnewbg-float")
        (define-key m (kbd "k")   "gkill")
        (define-key m (kbd "m")   "gmove")
        (define-key m (kbd "r")   "grename")
        m))
(define-key *top-map* (kbd "s-g") '*group-map*)

;; Application Launchers
(defvar *launch-map* nil
  "Keymap for launching stuffs")
(setf *launch-map*
      (let ((m (make-sparse-keymap)))
        (define-key m (kbd "e")   "emacs")
        (define-key m (kbd "b")   "firefox")
        (define-key m (kbd "g")   "gimp")
        (define-key m (kbd "m")   "mutt")
        (define-key m (kbd "a")   (format nil "exec ~A -e alsamixer" *terminal*))
        (define-key m (kbd "p")   (format nil "exec ~A/dmount"  (getenv "BIN_HOME")))
        (define-key m (kbd "n")   (format nil "exec ~A -e ncmpcpp" *terminal-smallfont*))
        (define-key m (kbd "x")   (format nil "exec ~A -e stumpish" *terminal-smallfont*))
        (define-key m (kbd "SPC") "exec bashrun2")
        m))
(define-key *top-map* (kbd "s-SPC") '*launch-map*)

(defvar *frame-map* nil
  "Keymap for doing stuffs to frames")
(setf *frame-map*
      (let ((m (make-sparse-keymap)))
        (define-key m (kbd "d")   "vsplit")
        (define-key m (kbd "D")   "hsplit")
        (define-key m (kbd "r")   "remove")
        (define-key m (kbd "s")   "iresize")
        (define-key m (kbd "y")   "toggle-split")
        (define-key m (kbd "m")   "pull-hidden-next")
        (define-key m (kbd "w")   "swap-windows")
        m))
(define-key *top-map* (kbd "s-s") '*frame-map*)

(defvar *query-map* nil
  "Keymap for searching the webs")
(setf *query-map*
      (let ((m (make-sparse-keymap)))
        (define-key m (kbd "i") "imdb")
        (define-key m (kbd "g") "google")
        (define-key m (kbd "w") "wikipedia")
        (define-key m (kbd "y") "youtube")
        (define-key m (kbd "b") "bbs")
        (define-key m (kbd "t") "bbsa")
        (define-key m (kbd "a") "awiki")
        (define-key m (kbd "c") "pac")
        (define-key m (kbd "u") "aur")
        (define-key m (kbd "l") "last.fm")
        (define-key m (kbd "p") "port")
        m))
(define-key *top-map* (kbd "s-w") '*query-map*)
