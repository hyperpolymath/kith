;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;
;; kith - Guix Package Definition
;; Run: guix shell -D -f guix.scm
;; Build: guix build -f guix.scm

(use-modules (guix packages)
             (guix gexp)
             (guix git-download)
             (guix build-system gnat)
             ((guix licenses) #:prefix license:)
             (gnu packages base)
             (gnu packages ada))

(define-public kith
  (package
    (name "kith")
    (version "0.1.0")
    (source (local-file "." "kith-checkout"
                        #:recursive? #t
                        #:select? (git-predicate ".")))
    (build-system gnat-build-system)
    (arguments
     `(#:gpr-flags '("-p" "-j0")
       #:phases
       (modify-phases %standard-phases
         (add-after 'unpack 'create-obj-dir
           (lambda _
             (mkdir-p "obj")
             (mkdir-p "bin")
             #t))
         (replace 'install
           (lambda* (#:key outputs #:allow-other-keys)
             (let* ((out (assoc-ref outputs "out"))
                    (bin (string-append out "/bin")))
               (mkdir-p bin)
               (for-each
                (lambda (file)
                  (install-file file bin))
                (find-files "bin" ".*"))
               #t))))))
    (native-inputs
     (list gnat
           gprbuild))
    (synopsis "Ada-powered TUI for managing .well-known directories")
    (description
     "Kith is a modular, Ada-powered TUI for managing .well-known directories.
Part of the RSR (Rhodium Standard Repositories) ecosystem with multi-platform
CI/CD, SHA-pinned actions, and OpenSSF Scorecard compliance.")
    (home-page "https://github.com/hyperpolymath/kith")
    (license license:agpl3+)))

;; Return package for guix shell
kith
