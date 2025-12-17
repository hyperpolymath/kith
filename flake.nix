# SPDX-License-Identifier: AGPL-3.0-or-later
# SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
#
# kith - Nix Flake (Fallback Package Manager)
# Primary: guix.scm
# Fallback: flake.nix (this file)
#
# Usage:
#   nix develop           # Enter dev shell
#   nix build             # Build package
#   nix run               # Run application

{
  description = "Kith - Ada-powered TUI for managing .well-known directories";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages.default = pkgs.stdenv.mkDerivation {
          pname = "kith";
          version = "0.1.0";
          src = ./.;

          nativeBuildInputs = with pkgs; [
            gnat
            gprbuild
          ];

          buildPhase = ''
            mkdir -p obj bin
            gprbuild -p -j0 -P kith.gpr
          '';

          installPhase = ''
            mkdir -p $out/bin
            cp -r bin/* $out/bin/ 2>/dev/null || true
          '';

          meta = with pkgs.lib; {
            description = "Ada-powered TUI for managing .well-known directories";
            homepage = "https://github.com/hyperpolymath/kith";
            license = licenses.agpl3Plus;
            maintainers = [ ];
            platforms = platforms.unix;
          };
        };

        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            gnat
            gprbuild
            gdb
            # Ada Language Server (optional)
            # ada-language-server
          ];

          shellHook = ''
            echo "Kith development shell"
            echo "  Build: gprbuild -p -j0 -P kith.gpr"
            echo "  Run:   ./bin/main"
            echo "  Clean: rm -rf obj bin"
          '';
        };
      }
    );
}
