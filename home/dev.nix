{ pkgs, ... }:

{
  imports = [
    ./programs/gh.nix
    ./programs/git.nix
    ./programs/vscode.nix
  ];

  home.packages = [
    pkgs.aws-vault
  ];

  programs = {
    gpg.enable = true;
    zsh.cdpath = [ "~/src/github.com" ];
  };

  programs.home-manager.enable = true;

  home.stateVersion = "20.09";
}
