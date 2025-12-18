;;; STATE.scm - Project Checkpoint
;;; kith
;;; Format: Guile Scheme S-expressions
;;; Purpose: Preserve AI conversation context across sessions
;;; Reference: https://github.com/hyperpolymath/state.scm

;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

;;;============================================================================
;;; METADATA
;;;============================================================================

(define metadata
  '((version . "0.1.0")
    (schema-version . "1.0")
    (created . "2025-12-15")
    (updated . "2025-12-17")
    (project . "kith")
    (repo . "github.com/hyperpolymath/kith")))

;;;============================================================================
;;; PROJECT CONTEXT
;;;============================================================================

(define project-context
  '((name . "kith")
    (tagline . "A modular, Ada-powered TUI for managing .well-known directories")
    (version . "0.1.0")
    (license . "AGPL-3.0-or-later")
    (rsr-compliance . "gold-target")

    (tech-stack
     ((primary . "Ada (GNAT/Ada 2022)")
      (build-system . "GPRbuild")
      (package-managers . ("Guix (primary)" "Nix (fallback)"))
      (ci-cd . "GitHub Actions + GitLab CI + Bitbucket Pipelines")
      (security . "CodeQL + OSSF Scorecard + TruffleHog")))))

;;;============================================================================
;;; CURRENT POSITION
;;;============================================================================

(define current-position
  '((phase . "v0.1 - Initial Setup and RSR Compliance")
    (overall-completion . 35)

    (components
     ((rsr-compliance
       ((status . "complete")
        (completion . 100)
        (notes . "SHA-pinned actions, SPDX headers, multi-platform CI")))

      (package-management
       ((status . "complete")
        (completion . 100)
        (notes . "guix.scm (primary) and flake.nix (fallback) configured")))

      (build-system
       ((status . "complete")
        (completion . 100)
        (notes . "kith.gpr with all source directories, compiler flags")))

      (security
       ((status . "complete")
        (completion . 100)
        (notes . "No weak crypto, HTTPS enforced, secrets in env vars")))

      (documentation
       ((status . "foundation")
        (completion . 40)
        (notes . "README, META/ECOSYSTEM/STATE.scm, SECURITY.md")))

      (testing
       ((status . "minimal")
        (completion . 10)
        (notes . "CI/CD scaffolding exists, AUnit integration pending")))

      (core-functionality
       ((status . "in-progress")
        (completion . 30)
        (notes . "Basic TUI structure, validation stubs")))))

    (working-features
     ("RSR-compliant CI/CD pipeline"
      "Multi-platform mirroring (GitHub, GitLab, Bitbucket)"
      "SPDX license headers on all files"
      "SHA-pinned GitHub Actions"
      "Guix package definition (gnat-build-system)"
      "Nix flake fallback"
      "Basic TUI menu structure"
      "AIBDP validation stub"))))

;;;============================================================================
;;; ROUTE TO MVP (ROADMAP)
;;;============================================================================

(define route-to-mvp
  '((target-version . "1.0.0")
    (definition . "Stable release with full .well-known management capabilities")

    (milestones
     ((v0.2
       ((name . "Core Functionality")
        (status . "in-progress")
        (eta . "Q1 2025")
        (items
         ("Complete Kith package interface (Initialize, Run, Finalize)"
          "Implement .well-known file generators"
          "Add security.txt RFC 9116 generator"
          "Add ai.txt and humans.txt generators"
          "Basic input validation"
          "AUnit test framework integration"
          "Coverage > 40%"))))

      (v0.3
       ((name . "Validation Suite")
        (status . "pending")
        (eta . "Q1 2025")
        (items
         ("Complete AIBDP validator"
          "DID document validator"
          "security.txt validator (RFC 9116 compliance)"
          "JSON Schema validation"
          "XML Schema validation"
          "Error reporting with line numbers"))))

      (v0.4
       ((name . "Integration Layer")
        (status . "pending")
        (eta . "Q2 2025")
        (items
         ("DNS integration for record suggestions"
          "Git integration for version tracking"
          "Webserver config generation (nginx, Apache)"
          "Plugin architecture finalization"))))

      (v0.5
       ((name . "Feature Complete")
        (status . "pending")
        (eta . "Q2 2025")
        (items
         ("All planned features implemented"
          "Academic plugin complete"
          "Creative plugin complete"
          "Union plugin complete"
          "Test coverage > 70%"
          "API stability guarantee"))))

      (v0.8
       ((name . "Beta Release")
        (status . "pending")
        (eta . "Q3 2025")
        (items
         ("Performance optimization"
          "Cross-platform testing (Linux, macOS, Windows)"
          "User documentation complete"
          "Installation guides"
          "External security audit"))))

      (v1.0
       ((name . "Production Release")
        (status . "pending")
        (eta . "Q4 2025")
        (items
         ("Comprehensive test coverage (> 85%)"
          "SPARK subset for critical validators"
          "Long-term support commitment"
          "Package in Guix upstream"
          "Package in Nixpkgs"))))))))

;;;============================================================================
;;; BLOCKERS & ISSUES
;;;============================================================================

(define blockers-and-issues
  '((critical
     ())  ;; No critical blockers

    (high-priority
     ())  ;; No high-priority blockers

    (medium-priority
     ((test-coverage
       ((description . "Limited test infrastructure")
        (impact . "Risk of regressions")
        (needed . "AUnit test framework integration")
        (assigned . "v0.2")))))

    (low-priority
     ((documentation-gaps
       ((description . "API documentation incomplete")
        (impact . "Harder for contributors")
        (needed . "Expand code comments and docs")
        (assigned . "v0.5")))))))

;;;============================================================================
;;; SECURITY STATUS
;;;============================================================================

(define security-status
  '((last-audit . "2025-12-17")
    (status . "compliant")

    (checks
     ((weak-crypto
       ((status . "pass")
        (notes . "No MD5/SHA1 for security purposes")))

      (https-enforcement
       ((status . "pass")
        (notes . "All URLs use HTTPS (XML namespace URIs acceptable)")))

      (secrets-management
       ((status . "pass")
        (notes . "Secrets via GitHub secrets, no hardcoded values")))

      (action-pinning
       ((status . "pass")
        (notes . "All GitHub Actions SHA-pinned")))

      (permissions
       ((status . "pass")
        (notes . "Least-privilege permissions in all workflows")))

      (supply-chain
       ((status . "pass")
        (notes . "SLSA Level 3 provenance generation configured")))))))

;;;============================================================================
;;; CRITICAL NEXT ACTIONS
;;;============================================================================

(define critical-next-actions
  '((immediate
     (("Verify Ada build with gprbuild" . high)
      ("Add AUnit test framework" . high)
      ("Implement file generators" . high)))

    (this-week
     (("Complete Kith package implementation" . high)
      ("Add initial test suite" . high)
      ("Test Guix and Nix builds" . medium)))

    (this-month
     (("Reach v0.2 milestone" . high)
      ("Implement validation suite" . high)
      ("Expand documentation" . medium)))))

;;;============================================================================
;;; SESSION HISTORY
;;;============================================================================

(define session-history
  '((snapshots
     ((date . "2025-12-17")
      (session . "scm-security-review")
      (accomplishments
       ("Fixed corrupted kith.adb (was shell script, now proper Ada)"
        "Added proper kith.ads package specification"
        "Updated kith.gpr with all source directories"
        "Improved guix.scm with gnat-build-system"
        "Created flake.nix fallback for Nix users"
        "Security audit: all checks passed"
        "Updated roadmap with detailed milestones"))
      (notes . "Comprehensive SCM and security review"))

     ((date . "2025-12-15")
      (session . "initial-state-creation")
      (accomplishments
       ("Added META.scm, ECOSYSTEM.scm, STATE.scm"
        "Established RSR compliance"
        "Created initial project checkpoint"))
      (notes . "First STATE.scm checkpoint created")))))

;;;============================================================================
;;; HELPER FUNCTIONS (for Guile evaluation)
;;;============================================================================

(define (get-completion-percentage component)
  "Get completion percentage for a component"
  (let ((comp (assoc component (cdr (assoc 'components current-position)))))
    (if comp
        (cdr (assoc 'completion (cdr comp)))
        #f)))

(define (get-blockers priority)
  "Get blockers by priority level"
  (cdr (assoc priority blockers-and-issues)))

(define (get-milestone version)
  "Get milestone details by version"
  (assoc version (cdr (assoc 'milestones route-to-mvp))))

;;;============================================================================
;;; EXPORT SUMMARY
;;;============================================================================

(define state-summary
  '((project . "kith")
    (version . "0.1.0")
    (overall-completion . 35)
    (next-milestone . "v0.2 - Core Functionality")
    (critical-blockers . 0)
    (high-priority-issues . 0)
    (security-status . "compliant")
    (updated . "2025-12-17")))

;;; End of STATE.scm
