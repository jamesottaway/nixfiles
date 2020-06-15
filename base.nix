{ pkgs, ... }:

{
  imports = [
    ./users
  ];

  environment.systemPackages = [
    pkgs.home-manager
  ];

  programs = {
    vim.enable = true;
    zsh.enable = true;
  };
}