{ pkgs, ... }:

{
  home.stateVersion = "20.09";
  programs.git.userEmail = "james.ottaway@hireup.com.au";
  programs.zsh.cdpath = ["~/src/github.com/hireupau"];
  home.file.".mongoshrc.js".source = ./misc/mongoshrc.js;
}
