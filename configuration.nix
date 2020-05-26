{ config, pkgs, ... }:

let
  home-manager = pkgs.callPackage <home-manager/home-manager> {};
in

{
  imports = [
    ./lorri.nix
  ];

  environment.darwinConfig = /etc/macos/configuration.nix;

  environment.systemPackages = [
    home-manager
    pkgs.lorri
  ];

  programs = {
    vim.enable = true;
    zsh.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };

  services.nix-daemon.enable = true;

  users.users.james = {
    description = "James";
    isHidden = false;
    home = /Users/james;
    createHome = true;
    shell = pkgs.zsh;
  };

  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToEscape = true;
  };
}