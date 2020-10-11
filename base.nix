{ pkgs, ... }:

let
  sources = import ./nix/sources.nix;
in

{
  imports = [
    ./users
  ];

  nixpkgs.pkgs = import sources.nixpkgs {};

  environment.systemPackages = [
    pkgs.home-manager
    pkgs.niv
  ];

  programs = {
    vim.enable = true;
    zsh.enable = true;
  };
}