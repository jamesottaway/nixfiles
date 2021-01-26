{ pkgs, ... }:

{
  imports = [
    ./programs/alacritty.nix
    ./programs/bat.nix
    ./programs/direnv.nix
    ./programs/exa.nix
    ./programs/git.nix
    ./programs/hammerspoon
    ./programs/tmux.nix
    ./programs/vim.nix
    ./programs/vscode.nix
    ./programs/zsh
    ./misc/jetbrains.nix
    ./misc/solarized.nix
  ];

  xdg.enable = true;

  home.packages = with pkgs; [
    aws-vault
    fd
    ripgrep
    yubikey-manager
  ];

  programs = {
    fzf.enable = true;
    gpg.enable = true;
    jq.enable = true;
    starship.enable = true;
    zsh.cdpath = [ "~/src/github.com" ];
  };

  programs.home-manager.enable = true;
  programs.tmux.secureSocket = false;

  home.stateVersion = "20.09";
}
