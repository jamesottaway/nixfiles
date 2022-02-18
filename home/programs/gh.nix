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
    settings.git_protocol = "ssh";
  };

  programs.zsh.initExtra = ''
    fpath+=(${completion})
  '';
}
