{ pkgs, ... }:

{
  imports = [
    ../programs/jira.nix
  ];

  programs.git.userEmail = "james.ottaway@hireup.com.au";

  programs.zsh.cdpath = ["~/src/github.com/hireupau"];
}
