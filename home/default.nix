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

  home = {
    username = "James";

    packages = with pkgs; [
      fd
      ripgrep
    ];
  };

  programs = {
    fzf.enable = true;
    gpg.enable = true;
    jq.enable = true;
    starship.enable = true;
  };

  programs.home-manager.enable = true;
  programs.tmux.secureSocket = false;

  home.stateVersion = "20.09";
  home.sessionVariables = {
    HOME_MANAGER_CONFIG = "$HOME/.dotfiles/b12y-MBP.nix";
  };
}