{ pkgs ? import <nixpkgs> {} }:

let
  inherit (pkgs) mkShell;
in mkShell {
  name = "elixir-shell";
  buildInputs = with pkgs; [
    elixir
  ];
}