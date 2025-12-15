;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm — kith

(ecosystem
  (version "1.0.0")
  (name "kith")
  (type "project")
  (purpose "A *modular, Ada-powered TUI* for managing `.well-known` directories with:")

  (position-in-ecosystem
    "Part of hyperpolymath ecosystem. Follows RSR guidelines.")

  (related-projects
    (project (name "rhodium-standard-repositories")
             (url "https://github.com/hyperpolymath/rhodium-standard-repositories")
             (relationship "standard")))

  (what-this-is "A *modular, Ada-powered TUI* for managing `.well-known` directories with:")
  (what-this-is-not "- NOT exempt from RSR compliance"))
