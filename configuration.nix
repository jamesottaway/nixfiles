{ config, pkgs, ... }:

let
  home-manager = pkgs.callPackage <home-manager/home-manager> {};
  vscode = pkgs.vscode-with-extensions.override {
    vscodeExtensions = pkgs.callPackage ./vscode-extensions.nix {};
  };
in

{
  nixpkgs.config.allowUnfree = true;

  imports = [
    ./lorri.nix
  ];

  environment.darwinConfig = /etc/macos/configuration.nix;

  environment.systemPackages = [
    home-manager
    pkgs.lorri
    vscode
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

  services.yabai = {
    enable = true;
    package = pkgs.yabai;
    extraConfig = ''
      yabai -m rule --add app='System Preferences' manage=off
      yabai -m space --padding abs:10:10:10:10
      yabai -m space --gap abs:10
    '';
  };
}