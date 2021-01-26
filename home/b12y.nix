{ pkgs, ... }:

{
  imports = [ ./. ];
  programs.git.userEmail = "git@james.b12y.com";
  programs.zsh.cdpath = ["~/src/github.com/jamesottaway"];
  programs.vscode.extensions = with pkgs.vscode-extensions; [
    ms-vscode-remote.remote-ssh
  ];
}
