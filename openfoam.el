;;; openfoam.el --- personal tweak with OpenFOAM. -*- lexical-binding: t -*-

;; This file is _NOT_ part of GNU OpenFOAM.

;; add dummy file for paraview visulization
(eval-after-load 'dired
  '(progn
     (define-key dired-mode-map (kbd "C-c n") 'my-test-new)
     (defun my-test-new ()
       (interactive)
       (write-region
        "for paraview foo" nil
        (concat (dired-current-directory)
                (nth (- (length (split-string
                                 (dired-current-directory) "/")) 2)
                     (split-string
                      (dired-current-directory) "/")) ".foam") t))))
