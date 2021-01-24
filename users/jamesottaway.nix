{ pkgs, ... }:

{
  users.users.jamesottaway = {
    description = "James Ottaway";
    isHidden = false;
    home = /Users/jamesottaway;
    createHome = true;
    shell = pkgs.zsh;
  };
}