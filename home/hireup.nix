{ pkgs, ... }:

{
  imports = [ ./. ];
  home.packages = [ pkgs.armada.defaultPackage ];
  programs.git.userEmail = "james.ottaway@hireup.com.au";
  programs.zsh.cdpath = ["~/src/github.com/hireupau"];
}
