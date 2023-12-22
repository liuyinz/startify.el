;;; startify.el --- Startup menu for Emacs -*- lexical-binding: t -*-

;; Copyright (C) 2023 liuyinz

;; Author: liuyinz <liuyinz95@gmail.com>
;; Maintainer: liuyinz <liuyinz95@gmail.com>
;; Version: 0.1.0
;; Package-Requires: ((emacs "29.1"))
;; Keywords: startup, screen, tools
;; Homepage: https://github.com/liuyinz/startify.el

;; This file is not a part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;; This file is not a part of GNU Emacs.

;;; Commentary:

;; Start menu for Emacs ported from vim-startify
;; SEE https://github.com/mhinz/vim-startify

;;; Code:

;; TODO

;; 1. avy-like jump for single item
;; 2. multi file/path at once
;; 3. recentf,bookmark,projects,...
;; 4. random sentence: fortune, poem,
;; 5. faces for section, path, filename, style
;; 6. define section with macro and defstructs
;; 7. key 0-9, a-z,A-Z
;; 8. right-align or center
;; 9. chinese simple/tradition
;; 10. poem pin and search

;; (require 'startify-sections)
;; (require 'startify-cowsay)
;; (require 'startify-poem)

(defgroup startify nil
  "Menu for startup screen."
  :group 'application)

(defcustom startify-sections
  '((recentf   . 5)
    (bookmark  . 5)
    (project   . 5))
  "Association list of items to show in the startup buffer.
Will be of the form `(list-type . list-size)'.
If nil it is disabled.  Possible values for list-type are:
`recentf' `bookmark' `project'."
  :type  '(repeat (alist :key-type symbol :value-type integer))
  :group 'startify)

(defmacro startify-define-section ()
  "docstring"
  :multi
  :path
  :face
  )









(define-derived-mode startify-mode special-mode "Startify"
  "Startify major mode for startup screen."
  :syntax-table nil
  :abbrev-table nil
  (buffer-disable-undo)
  ;; (when (featurep 'whitespace) (whitespace-mode -1))
  ;; (when (featurep 'linum) (linum-mode -1))
  ;; (when (featurep 'display-line-numbers) (display-line-numbers-mode -1))
  ;; (line-number-mode -1)
  ;; (setq-local revert-buffer-function #'dashboard-refresh-buffer)
  ;; (blink-cursor-mode -1)
  (setq inhibit-startup-screen t
        buffer-read-only t
        truncate-lines t)
  ;; define buffer-local keybindings
  )

(provide 'startify)
;;; startify.el ends here
