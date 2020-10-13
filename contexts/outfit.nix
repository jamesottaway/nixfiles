{ pkgs, ... }:

{
  imports = [
    ../programs/jira.nix
  ];

  programs.git.userEmail = "james.ottaway@outfit.io";

  programs.zsh.cdpath = ["~/src/github.com/Outfitio"];

  home.packages = [
    pkgs.saml2aws
  ];
}
