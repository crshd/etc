;;; Technobass-theme.el --- A color theme for Emacs 24.

;; Author: Prem K Murugan (http://skinwalker.wordpress.com)

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Installation:
;;
;; Drop the theme in a folder that is on 'custom-theme-load-path'
;; and enjoy!
;;
;; Don't forget that the theme requires Emacs 24.
;;

;;; Code

(deftheme Technobass
  "Technobass-theme, generated by polychrome")

(let ((class '((class color) (min-colors 89)))
	(Technobass-fg   "#665C64")
	(Technobass-bg   "#121212")
	(Technobass-bg-1 "#0C0C0C")
	(Technobass-bg-2 "#1A1A1A")
	(Technobass-bg-3 "#4D4D4D")

	(Technobass-red       "#FF8A8A")
	(Technobass-red+1     "#E55261")
			
	(Technobass-green     "#81852E")
	(Technobass-green+1   "#B7E236")

	(Technobass-yellow    "#FFAB57")
	(Technobass-yellow+1  "#E9601C")

	(Technobass-blue      "#82B8F2")
	(Technobass-blue+1    "#0088CC")

	(Technobass-magenta   "#AD7FA8")
	(Technobass-magenta+1 "#CB98E1")

	(Technobass-cyan      "#6A9A8A")
	(Technobass-cyan+1    "#36E2E2"))

  (custom-theme-set-faces
   'Technobass

   ;;; basic coloring
   `(cursor ((,class (:foreground ,Technobass-fg))))
   `(default ((,class (:foreground ,Technobass-fg :background ,Technobass-bg))))
   `(fringe ((,class (:foreground ,Technobass-cyan :background ,Technobass-bg-1))))
   `(escape-glyph-face ((,class (:foreground ,Technobass-red))))
   `(header-line ((,class (:foreground ,Technobass-yellow :background ,Technobass-bg-1
                           :box (:line-width 1 :color ,Technobass-bg-1)))))
   `(hl-line ((,class (:background ,Technobass-bg-2))))
   `(linum ((,class (:foreground "#505050" :background ,Technobass-bg-1))))
   `(minibuffer-prompt ((,class (:foreground ,Technobass-yellow))))
   `(menu ((,class (:foreground ,Technobass-fg :background ,Technobass-bg))))

   `(mode-line ((,class (:foreground ,Technobass-fg :background ,Technobass-bg-2
                         :box (:line-width 1 :color ,Technobass-bg-2)))))
   `(mode-line-inactive ((,class (:inherit mode-line :background ,Technobass-bg
                                  :box (:line-width 1 :color ,Technobass-bg)))))
   `(mode-line-buffer-id ((,class (:inherit 'Technobass-yellow :weight bold))))
   `(mode-line-buffer-name ((,class (:foreground ,Technobass-green :weight bold))))
   `(mode-line-col-face ((,class (:foreground ,Technobass-green))))
   `(mode-line-folder-face ((,class (:foreground ,Technobass-bg-3))))
   `(mode-line-line-face ((,class (:foreground ,Technobass-magenta))))
   `(mode-line-minor-mode-face ((,class (:foreground ,Technobass-bg-3))))
   `(mode-line-mode-face ((,class (:foreground ,Technobass-yellow))))
   `(mode-line-modified-face ((,class (:foreground ,Technobass-magenta+1 :background ,Technobass-bg-2))))
   `(mode-line-read-only-face ((,class (:foreground ,Technobass-red))))
   `(mode-line-80col-face ((,class (:foreground ,Technobass-red))))

   `(region ((,class (:background ,Technobass-bg-3))))
   `(secondary-selection ((,class (:background ,Technobass-bg-3))))
   `(trailing-whitespace ((,class (:background ,Technobass-red))))
   `(vertical-border ((,class (:foreground ,Technobass-fg))))

   ;; faces used by isearch
   `(isearch ((,class (:foreground ,Technobass-yellow :background ,Technobass-bg-1))))
   `(isearch-fail ((,class (:foreground ,Technobass-fg :background ,Technobass-red))))
   `(lazy-highlight ((,class (:foreground ,Technobass-yellow :background ,Technobass-bg-3))))

   ;; font-lock
   `(font-lock-builtin-face ((,class (:foreground ,Technobass-blue))))
   `(font-lock-comment-face ((,class (:foreground ,Technobass-bg-3))))
   `(font-lock-comment-delimiter-face ((,class (:foreground ,Technobass-bg-3))))
   `(font-lock-constant-face ((,class (:foreground ,Technobass-fg))))
   `(font-lock-doc-face ((,class (:foreground ,Technobass-green+1))))
   `(font-lock-doc-string-face ((,class (:foreground ,Technobass-blue+1))))
   `(font-lock-function-name-face ((,class (:foreground ,Technobass-blue))))
   `(font-lock-keyword-face ((,class (:foreground ,Technobass-yellow :weight bold))))
   `(font-lock-negation-char-face ((,class (:foregorund ,Technobass-fg))))
   `(font-lock-preprocessor-face ((,class (:foreground ,Technobass-blue))))
   `(font-lock-string-face ((,class (:foreground ,Technobass-magenta))))
   `(font-lock-type-face ((,class (:foregorund ,Technobass-yellow))))
   `(font-lock-variable-name-face ((,class (:foreground ,Technobass-yellow))))
   `(font-lock-warning-face ((,class (:foreground ,Technobass-yellow :weight bold :underline t))))
   `(font-lock-pseudo-keyword-face ((,class (:foreground ,Technobass-yellow))))
   `(font-lock-operator-face ((,class (:foreground ,Technobass-magenta+1))))

   `(c-annotation-face ((,class (:inherit font-lock-constant-face))))

   ;;; external

   ;; auto-complete
   `(ac-candidate-face ((,class (:background ,Technobass-bg-3 :foreground "white"))))
   `(ac-selection-face ((,class (:background ,Technobass-blue+1 :foreground ,Technobass-fg))))
   `(popup-tip-face ((,class (:background ,Technobass-yellow :foreground "black"))))
   `(popup-scroll-bar-foreground-face ((,class (:background "white"))))
   `(popup-scroll-bar-background-face ((,class (:background ,Technobass-bg-1))))
   `(popup-isearch-match ((,class (:background ,Technobass-bg :foreground ,Technobass-fg))))

   ;; diff
   `(diff-added ((,class (:foreground ,Technobass-green+1))))
   `(diff-changed ((,class (:foreground ,Technobass-yellow))))
   `(diff-removed ((,class (:foreground ,Technobass-red))))
   `(diff-header ((,class (:background ,Technobass-bg-2))))
   `(diff-file-header
     ((,class (:background ,Technobass-bg-3 :foreground ,Technobass-fg :bold t))))

   ;; eshell
   `(eshell-prompt ((,class (:foreground ,Technobass-yellow :weight bold))))
   `(eshell-ls-archive ((,class (:foreground ,Technobass-red :weight bold))))
   `(eshell-ls-backup ((,class (:inherit font-lock-comment))))
   `(eshell-ls-clutter ((,class (:inherit font-lock-comment))))
   `(eshell-ls-directory ((,class (:foreground ,Technobass-blue+1 :weight bold))))
   `(eshell-ls-executable ((,class (:foreground ,Technobass-red+1 :weight bold))))
   `(eshell-ls-unreadable ((,class (:foreground ,Technobass-fg))))
   `(eshell-ls-missing ((,class (:inherit font-lock-warning))))
   `(eshell-ls-product ((,class (:inherit font-lock-doc))))
   `(eshell-ls-special ((,class (:inherit Technobass-yellow :weight bold))))
   `(eshell-ls-symlink ((,class (:foreground ,Technobass-cyan :weight bold))))

   ;; ecb
   `(ecb-analyse-bucket-element-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-analyse-bucket-node-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-analyse-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-analyse-general-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-bucket-node-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-default-general-face ((,class (:inherit Technobass-fg))))
   `(ecb-default-highlight-face ((,class (:foreground ,Technobass-green :background ,Technobass-bg :weight bold))))
   `(ecb-directories-general-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-directory-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-directory-not-accessible-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-history-bucket-node-dir-soure-path-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-history-bucket-node-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-history-dead-buffer-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-history-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-history-general-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-history-indirect-buffer-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-method-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-method-non-semantic-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-methods-general-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-mode-line-data-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-mode-line-prefix-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-mode-line-win-nr-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-source-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-source-in-directories-buffer-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-source-read-only-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-sources-general-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-symboldef-prototype-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-symboldef-symbol-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-tag-header-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-tree-guide-line-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-type-tag-class-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-type-tag-enum-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-type-tag-group-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-type-tag-interface-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-type-tag-struct-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(ecb-type-tag-typedef-face ((,class (:foreground ,Technobass-cyan :weight bold))))

   ;; erc
   `(erc-action-face ((,class (:inherit erc-default-face))))
   `(erc-bold-face ((,class (:weight bold))))
   `(erc-current-nick-face ((,class (:foreground ,Technobass-yellow :weight bold))))
   `(erc-dangerous-host-face ((,class (:inherit font-lock-warning))))
   `(erc-default-face ((,class (:foreground ,Technobass-fg))))
   `(erc-direct-msg-face ((,class (:inherit erc-default))))
   `(erc-error-face ((,class (:inherit font-lock-warning))))
   `(erc-fool-face ((,class (:inherit erc-default))))
   `(erc-highlight-face ((,class (:inherit hover-highlight))))
   `(erc-input-face ((,class (:foreground ,Technobass-yellow))))
   `(erc-keyword-face ((,class (:foreground ,Technobass-yellow :weight bold))))
   `(erc-nick-default-face ((,class (:weight bold))))
   `(erc-nick-msg-face ((,class (:inherit erc-default))))
   `(erc-notice-face ((,class (:foreground ,Technobass-green))))
   `(erc-pal-face ((,class (:foreground ,Technobass-magenta+1 :weight bold))))
   `(erc-prompt-face ((,class (:foreground ,Technobass-magenta+1 :weight bold))))
   `(erc-timestamp-face ((,class (:foreground ,Technobass-green+1))))
   `(erc-underline-face ((,class (:underline t))))

   ;; evil
   `(evil-state-face ((,class (:foreground ,Technobass-bg-1 :background ,Technobass-green :weight bold :box (:line-width 4 :color ,Technobass-green)))))
   ;; flymake
   `(flymake-errline ((,class (:foreground ,Technobass-red :weight bold :underline t))))
   `(flymake-warnline ((,class (:foreground ,Technobass-yellow :weight bold :underline t))))

   ;; flyspell
   `(flyspell-duplicate ((,class (:foreground ,Technobass-yellow :weight bold :underline t))))
   `(flyspell-incorrect ((,class (:foreground ,Technobass-red :weight bold :underline t))))

   ;; gnus
   `(gnus-group-mail-1-face ((,class (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty-face ((,class (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2-face ((,class (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty-face ((,class (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3-face ((,class (:bold t :inherit 'nus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty-face ((,class (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4-face ((,class (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty-face ((,class (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5-face ((,class (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty-face ((,class (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6-face ((,class (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty-face ((,class (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low-face ((,class (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty-face ((,class (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1-face ((,class (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2-face ((,class (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3-face ((,class (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4-face ((,class (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5-face ((,class (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6-face ((,class (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low-face ((,class (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content-face ((,class (:inherit message-header-other))))
   `(gnus-header-from-face ((,class (:inherit message-header-from))))
   `(gnus-header-name-face ((,class (:inherit message-header-name))))
   `(gnus-header-newsgroups-face ((,class (:inherit message-header-other))))
   `(gnus-header-subject-face ((,class (:inherit message-header-subject))))
   `(gnus-summary-cancelled-face ((,class (:foreground ,Technobass-magenta+1))))
   `(gnus-summary-high-ancient-face ((,class (:foreground ,Technobass-blue))))
   `(gnus-summary-high-read-face ((,class (:foreground ,Technobass-green :weight bold))))
   `(gnus-summary-high-ticked-face ((,class (:foreground ,Technobass-magenta+1 :weight bold))))
   `(gnus-summary-high-unread-face ((,class (:foreground ,Technobass-fg :weight bold))))
   `(gnus-summary-low-ancient-face ((,class (:foreground ,Technobass-blue))))
   `(gnus-summary-low-read-face ((,class (:foreground ,Technobass-green))))
   `(gnus-summary-low-ticked-face ((,class (:foreground ,Technobass-magenta+1 :weight bold))))
   `(gnus-summary-low-unread-face ((,class (:foreground ,Technobass-fg))))
   `(gnus-summary-normal-ancient-face ((,class (:foreground ,Technobass-blue))))
   `(gnus-summary-normal-read-face ((,class (:foreground ,Technobass-green))))
   `(gnus-summary-normal-ticked-face ((,class (:foreground ,Technobass-magenta+1 :weight bold))))
   `(gnus-summary-normal-unread-face ((,class (:foreground ,Technobass-fg))))
   `(gnus-summary-selected-face ((,class (:foreground ,Technobass-yellow :weight bold))))
   `(gnus-cite-1-face ((,class (:foreground ,Technobass-blue))))
   `(gnus-cite-10-face ((,class (:foreground ,Technobass-yellow))))
   `(gnus-cite-11-face ((,class (:foreground ,Technobass-yellow))))
   `(gnus-cite-2-face ((,class (:foreground ,Technobass-cyan+1))))
   `(gnus-cite-3-face ((,class (:foreground ,Technobass-blue))))
   `(gnus-cite-4-face ((,class (:foreground ,Technobass-green+1))))
   `(gnus-cite-5-face ((,class (:foreground ,Technobass-green+1))))
   `(gnus-cite-6-face ((,class (:foreground ,Technobass-green))))
   `(gnus-cite-7-face ((,class (:foreground ,Technobass-red))))
   `(gnus-cite-8-face ((,class (:foreground ,Technobass-red))))
   `(gnus-cite-9-face ((,class (:foreground ,Technobass-red))))
   `(gnus-group-news-1-empty-face ((,class (:foreground ,Technobass-yellow))))
   `(gnus-group-news-2-empty-face ((,class (:foreground ,Technobass-green+1))))
   `(gnus-group-news-3-empty-face ((,class (:foreground ,Technobass-green+1))))
   `(gnus-group-news-4-empty-face ((,class (:foreground ,Technobass-blue))))
   `(gnus-group-news-5-empty-face ((,class (:foreground ,Technobass-blue))))
   `(gnus-group-news-6-empty-face ((,class (:foreground ,Technobass-bg-3))))
   `(gnus-group-news-low-empty-face ((,class (:foreground ,Technobass-bg-3))))
   `(gnus-signature-face ((,class (:foreground ,Technobass-yellow))))
   `(gnus-x-face ((,class (:background ,Technobass-fg :foreground ,Technobass-bg))))

   ;; ido
   `(ido-only-match-face ((,class (:foreground ,Technobass-green))))
   `(ido-subdir-face ((,class (:foreground ,Technobass-red))))

   ;; JS2
   `(js2-error-face ((,class (:foreground ,Technobass-red))))
   `(js2-external-variable-face ((,class (:foreground ,Technobass-magenta+1))))
   `(js2-function-param-face ((,class (:foreground ,Technobass-green))))
   `(js2-instance-member-face ((,class (:foreground ,Technobass-green+1))))
   `(js2-jsdoc-html-tag-delimiter-face ((,class (:foreground ,Technobass-green))))
   `(js2-jsdoc-html-tag-name-face ((,class (:foreground ,Technobass-yellow))))
   `(js2-jsdoc-tag-face ((,class (:foreground ,Technobass-bg-3))))
   `(js2-jsdoc-type-face ((,class (:foreground ,Technobass-bg-2))))
   `(js2-jsdoc-value-face ((,class (:foreground ,Technobass-bg-2))))
   `(js2-private-function-call-face ((,class (:foreground ,Technobass-yellow))))
   `(js2-private-member-face ((,class (:foreground ,Technobass-cyan+1))))
   `(js2-warning-face ((,class (:underline (:color ,Technobass-bg-3 :style wave)))))

   ;; JS3
   `(js3-error-face ((,class (:foreground ,Technobass-red))))
   `(js3-external-variable-face ((,class (:foreground ,Technobass-magenta+1))))
   `(js3-function-param-face ((,class (:foreground ,Technobass-green))))
   `(js3-instance-member-face ((,class (:foreground ,Technobass-green+1))))
   `(js3-jsdoc-html-tag-delimiter-face ((,class (:foreground ,Technobass-green))))
   `(js3-jsdoc-html-tag-name-face ((,class (:foreground ,Technobass-yellow))))
   `(js3-jsdoc-tag-face ((,class (:foreground ,Technobass-bg-3))))
   `(js3-jsdoc-type-face ((,class (:foreground ,Technobass-bg-2))))
   `(js3-jsdoc-value-face ((,class (:foreground ,Technobass-bg-2))))
   `(js3-private-function-call-face ((,class (:foreground ,Technobass-yellow))))
   `(js3-private-member-face ((,class (:foreground ,Technobass-cyan+1))))
   `(js3-warning-face ((,class (:underline (:color ,Technobass-bg-3 :style wave)))))

   ;; magit
   `(magit-section-title ((,class (:foreground ,Technobass-yellow :weight bold))))
   `(magit-branch ((,class (:foreground ,Technobass-magenta+1 :weight bold))))

   ;; message-mode
   `(message-cited-text-face ((,class (:inherit font-lock-comment))))
   `(message-header-name-face ((,class (:foreground ,Technobass-green+1))))
   `(message-header-other-face ((,class (:foreground ,Technobass-green))))
   `(message-header-to-face ((,class (:inherit 'Technobass-yellow :weight bold))))
   `(message-header-from-face ((,class (:inherit 'Technobass-yellow :weight bold))))
   `(message-header-cc-face ((,class (:inherit 'Technobass-yellow :weight bold))))
   `(message-header-newsgroups-face ((,class (:inherit 'Technobass-yellow :weight bold))))
   `(message-header-subject-face ((,class (:inherit 'Technobass-magenta+1 :weight bold))))
   `(message-header-xheader-face ((,class (:foreground ,Technobass-green))))
   `(message-mml-face ((,class (:foreground ,Technobass-yellow :weight bold))))
   `(message-separator-face ((,class (:inherit font-lock-comment))))

   ;; mew
   `(mew-face-header-subject ((,class (:foreground ,Technobass-magenta+1))))
   `(mew-face-header-from ((,class (:foreground ,Technobass-yellow))))
   `(mew-face-header-date ((,class (:foreground ,Technobass-green))))
   `(mew-face-header-to ((,class (:foreground ,Technobass-red))))
   `(mew-face-header-key ((,class (:foreground ,Technobass-green))))
   `(mew-face-header-private ((,class (:foreground ,Technobass-green))))
   `(mew-face-header-important ((,class (:foreground ,Technobass-blue))))
   `(mew-face-header-marginal ((,class (:foreground ,Technobass-fg :weight bold))))
   `(mew-face-header-warning ((,class (:foreground ,Technobass-red))))
   `(mew-face-header-xmew ((,class (:foreground ,Technobass-green))))
   `(mew-face-header-xmew-bad ((,class (:foreground ,Technobass-red))))
   `(mew-face-body-url ((,class (:foreground ,Technobass-magenta+1))))
   `(mew-face-body-comment ((,class (:foreground ,Technobass-fg :slant italic))))
   `(mew-face-body-cite1 ((,class (:foreground ,Technobass-green))))
   `(mew-face-body-cite2 ((,class (:foreground ,Technobass-blue))))
   `(mew-face-body-cite3 ((,class (:foreground ,Technobass-magenta+1))))
   `(mew-face-body-cite4 ((,class (:foreground ,Technobass-yellow))))
   `(mew-face-body-cite5 ((,class (:foreground ,Technobass-red))))
   `(mew-face-mark-review ((,class (:foreground ,Technobass-blue))))
   `(mew-face-mark-escape ((,class (:foreground ,Technobass-green))))
   `(mew-face-mark-delete ((,class (:foreground ,Technobass-red))))
   `(mew-face-mark-unlink ((,class (:foreground ,Technobass-yellow))))
   `(mew-face-mark-refile ((,class (:foreground ,Technobass-green))))
   `(mew-face-mark-unread ((,class (:foreground ,Technobass-red))))
   `(mew-face-eof-message ((,class (:foreground ,Technobass-green))))
   `(mew-face-eof-part ((,class (:foreground ,Technobass-yellow))))

   ;; mmm
   `(mmm-code-submode-face ((,class (:background ,Technobass-bg-1))))

   ;; nav
   `(nav-face-heading ((,class (:foreground ,Technobass-yellow))))
   `(nav-face-button-num ((,class (:foreground ,Technobass-cyan))))
   `(nav-face-dir ((,class (:foreground ,Technobass-green))))
   `(nav-face-hdir ((,class (:foreground ,Technobass-red))))
   `(nav-face-file ((,class (:foreground ,Technobass-fg))))
   `(nav-face-hfile ((,class (:foreground ,Technobass-red))))

   ;; org-mode
   `(org-agenda-date-today
     ((,class (:foreground "white" :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((,class (:inherit font-lock-comment-face))))
   `(org-archived ((,class (:foreground ,Technobass-fg :weight bold))))
   `(org-checkbox ((,class (:background ,Technobass-bg-3 :foreground "white"
:box (:line-width 1 :style released-button)))))
   `(org-date ((,class (:foreground ,Technobass-blue :underline t))))
   `(org-deadline-announce ((,class (:foreground ,Technobass-red))))
   `(org-done ((,class (:bold t :weight bold :foreground ,Technobass-green+1))))
   `(org-formula ((,class (:foreground ,Technobass-yellow))))
   `(org-headline-done ((,class (:foreground ,Technobass-green+1))))
   `(org-hide ((,class (:foreground ,Technobass-bg-1))))
   `(org-level-1 ((,class (:foreground ,Technobass-magenta+1))))
   `(org-level-2 ((,class (:foreground ,Technobass-green+1))))
   `(org-level-3 ((,class (:foreground ,Technobass-cyan+1))))
   `(org-level-4 ((,class (:foreground ,Technobass-yellow))))
   `(org-level-5 ((,class (:foreground ,Technobass-cyan))))
   `(org-level-6 ((,class (:foreground ,Technobass-green))))
   `(org-level-7 ((,class (:foreground ,Technobass-red))))
   `(org-level-8 ((,class (:foreground ,Technobass-blue+1))))
   `(org-link ((,class (:foreground ,Technobass-yellow :underline t))))
   `(org-scheduled ((,class (:foreground ,Technobass-green+1))))
   `(org-scheduled-previously ((,class (:foreground ,Technobass-red))))
   `(org-scheduled-today ((,class (:foreground ,Technobass-blue+1))))
   `(org-special-keyword ((,class (:foreground ,Technobass-yellow))))
   `(org-table ((,class (:foreground ,Technobass-green+1))))
   `(org-tag ((,class (:bold t :weight bold))))
   `(org-time-grid ((,class (:foreground ,Technobass-magenta+1))))
   `(org-todo ((,class (:bold t :foreground ,Technobass-red :weight bold))))
   `(org-upcoming-deadline ((,class (:inherit font-lock-keyword-face))))
   `(org-warning ((,class (:bold t :foreground ,Technobass-red :weight bold))))

   ;; outline
   `(outline-8 ((,class (:inherit default))))
   `(outline-7 ((,class (:inherit outline-8 :height 1.0))))
   `(outline-6 ((,class (:inherit outline-7 :height 1.0))))
   `(outline-5 ((,class (:inherit outline-6 :height 1.0))))
   `(outline-4 ((,class (:inherit outline-5 :height 1.0))))
   `(outline-3 ((,class (:inherit outline-4 :height 1.0))))
   `(outline-2 ((,class (:inherit outline-3 :height 1.0))))
   `(outline-1 ((,class (:inherit outline-2 :height 1.0))))

   ;; post-mode
   `(post-email-address-text-face ((,class (:foreground ,Technobass-yellow :weight bold))))
   `(post-emoticon-face ((,class (:foreground ,Technobass-green+1 :weight bold))))
   `(post-header-keyword-face ((,class (:foreground ,Technobass-bg-2))))
   `(post-header-value-face ((,class (:foreground ,Technobass-fg))))
   `(post-multiply-quoted-text-face ((,class (:foreground ,Technobass-magenta+1))))
   `(post-quoted-text-face ((,class (:foreground ,Technobass-yellow))))
   `(post-signature-text-face ((,class (:foreground ,Technobass-bg-3))))
   `(post-underline-face ((,class (:foreground ,Technobass-green))))
   `(post-url-face ((,class (:foreground ,Technobass-blue :underline t))))

   ;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((,class (:foreground ,Technobass-cyan :weight bold))))
   `(rainbow-delimiters-depth-2-face ((,class (:foreground ,Technobass-yellow :weight bold))))
   `(rainbow-delimiters-depth-3-face ((,class (:foreground ,Technobass-blue+1 :weight bold))))
   `(rainbow-delimiters-depth-4-face ((,class (:foreground ,Technobass-red+1 :weight bold))))
   `(rainbow-delimiters-depth-5-face ((,class (:foreground ,Technobass-green+1 :weight bold))))
   `(rainbow-delimiters-depth-6-face ((,class (:foreground ,Technobass-cyan+1 :weight bold))))
   `(rainbow-delimiters-depth-7-face ((,class (:foreground ,Technobass-green+1 :weight bold))))
   `(rainbow-delimiters-depth-8-face ((,class (:foreground ,Technobass-red :weight bold))))
   `(rainbow-delimiters-depth-9-face ((,class (:foreground ,Technobass-yellow :weight bold))))
   `(rainbow-delimiters-depth-10-face ((,class (:foreground ,Technobass-green+1 :weight bold))))
   `(rainbow-delimiters-depth-11-face ((,class (:foreground ,Technobass-blue+1 :weight bold))))
   `(rainbow-delimiters-depth-12-face ((,class (:foreground ,Technobass-red :weight bold))))

   ;; rpm-mode
   `(rpm-spec-dir-face ((,class (:foreground ,Technobass-green))))
   `(rpm-spec-doc-face ((,class (:foreground ,Technobass-green))))
   `(rpm-spec-ghost-face ((,class (:foreground ,Technobass-red))))
   `(rpm-spec-macro-face ((,class (:foreground ,Technobass-yellow))))
   `(rpm-spec-obsolete-tag-face ((,class (:foreground ,Technobass-red))))
   `(rpm-spec-package-face ((,class (:foreground ,Technobass-red))))
   `(rpm-spec-section-face ((,class (:foreground ,Technobass-yellow))))
   `(rpm-spec-tag-face ((,class (:foreground ,Technobass-blue))))
   `(rpm-spec-var-face ((,class (:foreground ,Technobass-red))))

   ;; show-paren
   `(show-paren-mismatch ((,class (:foreground ,Technobass-fg :background ,Technobass-red :weight bold))))
   `(show-paren-match ((,class (:foreground ,Technobass-fg :background ,Technobass-blue+1 :weight bold))))

   ;; speedbar
   `(speedbar-button-face ((,class (:foreground ,Technobass-green+1))))
   `(speedbar-directory-face ((,class (:foreground ,Technobass-blue+1))))
   `(speedbar-file-face ((,class (:foreground ,Technobass-fg))))
   `(speedbar-highlight-face ((,class (:background ,Technobass-bg-3))))
   `(speedbar-selected-face ((,class (:background ,Technobass-bg-2))))
   `(speedbar-separator-face ((,class (:foreground ,Technobass-bg-2))))
   `(speedbar-tag-face ((,class (:foreground ,Technobass-yellow))))

   ;; wl (wanderlust)
   ;; some faces end with -face, while other don't; confusing
   `(wl-highlight-folder-few-face ((,class (:foreground ,Technobass-red))))
   `(wl-highlight-folder-many-face ((,class (:foreground ,Technobass-red))))
   `(wl-highlight-folder-path-face ((,class (:foreground ,Technobass-magenta+1))))
   `(wl-highlight-folder-unread-face ((,class (:foreground ,Technobass-blue))))
   `(wl-highlight-folder-zero-face ((,class (:foreground ,Technobass-fg))))
   `(wl-highlight-folder-unknown-face ((,class (:foreground ,Technobass-blue))))
   `(wl-highlight-message-citation-header ((,class (:foreground ,Technobass-red))))
   `(wl-highlight-message-cited-text-1 ((,class (:foreground ,Technobass-red))))
   `(wl-highlight-message-cited-text-2 ((,class (:foreground ,Technobass-green+1))))
   `(wl-highlight-message-cited-text-3 ((,class (:foreground ,Technobass-blue))))
   `(wl-highlight-message-cited-text-4 ((,class (:foreground ,Technobass-blue+1))))
   `(wl-highlight-message-header-contents-face ((,class (:foreground ,Technobass-green))))
   `(wl-highlight-message-headers-face ((,class (:foreground ,Technobass-red+1))))
   `(wl-highlight-message-important-header-contents ((,class (:foreground ,Technobass-green+1))))
   `(wl-highlight-message-header-contents ((,class (:foreground ,Technobass-green+1))))
   `(wl-highlight-message-important-header-contents2 ((,class (:foreground ,Technobass-green+1))))
   `(wl-highlight-message-signature ((,class (:foreground ,Technobass-green))))
   `(wl-highlight-message-unimportant-header-contents ((,class (:foreground ,Technobass-fg))))
   `(wl-highlight-summary-answeredace ((,class (:foreground ,Technobass-blue))))
   `(wl-highlight-summary-disposed-face ((,class (:foreground ,Technobass-fg
:slant italic))))
   `(wl-highlight-summary-new-face ((,class (:foreground ,Technobass-blue))))
   `(wl-highlight-summary-normal-face ((,class (:foreground ,Technobass-fg))))
   `(wl-highlight-summary-thread-top-face ((,class (:foreground ,Technobass-yellow))))
   `(wl-highlight-thread-indent-face ((,class (:foreground ,Technobass-magenta))))
   `(wl-highlight-summary-refiled-face ((,class (:foreground ,Technobass-fg))))
   `(wl-highlight-summary-displaying-face ((,class (:underline t :weight bold)))))

  (custom-theme-set-variables
   'Technobass

   `(ansi-color-names-vector
     [,Technobass-bg ,Technobass-red ,Technobass-green ,Technobass-yellow
,Technobass-blue ,Technobass-magenta ,Technobass-cyan ,Technobass-fg])
   `(ansi-term-color-vector
     ;; black, red, green, yellow, blue, magenta, cyan, white
     [unspecified ,Technobass-bg ,Technobass-red ,Technobass-green ,Technobass-yellow
,Technobass-blue ,Technobass-magenta ,Technobass-blue ,Technobass-fg])))

(provide-theme 'Technobass)

;; Local Variables:
;; no-byte-compile: t
;; End:

;;; Technobass-theme.el ends here.
