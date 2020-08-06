{ pkgs, ... }:

{
  xdg.enable = true;

  imports = [
    ../programs/direnv.nix
    ../programs/git.nix
    ../programs/tmux.nix
    ../programs/vscode.nix
  ];

  home.packages = with pkgs; [
    aws-vault
    tmux-up
    yubikey-manager
  ];

  programs.zsh.cdpath = [
    "~/src/github.com"
  ];
}