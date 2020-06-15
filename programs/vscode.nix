{ pkgs, ... }:

let
  inherit (pkgs) vscode-extensions;
in

{
  nixpkgs.config.allowUnfree = true;

  programs.vscode = {
    enable = true;
    extensions = with vscode-extensions; [
      ms-vscode-remote.remote-ssh
    ];
  };
}