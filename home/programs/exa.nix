{ pkgs, ... }:

{
  home.packages = [ pkgs.exa ];
  programs.zsh.shellAliases.ls = "exa";
}