{ pkgs, ... }:

{
  imports = [
    ../contexts/development.nix
    ../programs/alacritty.nix
    ../programs/bat.nix
    ../programs/exa.nix
    ../programs/hammerspoon
    ../programs/vim.nix
    ../programs/zsh
  ];

  home.packages = with pkgs; [
    fd
    ripgrep
  ];

  programs = {
    fzf.enable = true;
    gpg.enable = true;
    jq.enable = true;
    starship.enable = true;
  };

  programs.home-manager.enable = true;
  programs.tmux.secureSocket = false;

  home.stateVersion = "20.09";
}