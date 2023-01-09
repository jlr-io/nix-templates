{ pkgs ? import <nixpkgs> {} }:

let
  inherit (pkgs) mkShell;
in mkShell {
  name = "haskell-shell";
  buildInputs = with pkgs; [
    # https://www.haskell.org/downloads/#collapse-nixos
    ghc
    cabal-install
    haskell-language-server
    stack
  ];
}