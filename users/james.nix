{ pkgs, ... }:

{
  users.users.james = {
    description = "James";
    isHidden = false;
    home = /Users/james;
    createHome = true;
    shell = pkgs.zsh;
  };
}