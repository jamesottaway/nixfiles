{ pkgs, ... }:

let
  sources = import ./nix/sources.nix;
in

{
  imports = [
    ./users
    ./nix/flake.nix
  ];

  environment.systemPackages = [
    pkgs.home-manager
    pkgs.niv
  ];

  programs = {
    vim.enable = true;
    zsh.enable = true;
  };
}