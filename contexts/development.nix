{ pkgs, ... }:

{
  xdg.enable = true;

  home.packages = with pkgs; [
    aws-vault
    tmux-up
    yubikey-manager
  ];

  programs = {
    direnv.enable = true;
  };
}