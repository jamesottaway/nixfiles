{ pkgs, ... }:

let
  completion = pkgs.runCommand "_gh" {
    buildInputs = [ pkgs.gh ];
  } ''
    gh completion --shell zsh > $out
  '';
in

{
  programs.gh = {
    enable = true;
    gitProtocol = "ssh";
  };

  programs.zsh.initExtra = ''
    fpath+=(${completion})
  '';
}
