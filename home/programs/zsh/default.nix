{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    defaultKeymap = "viins";
    dotDir = ".config/zsh";
    initExtra = builtins.readFile ./zshrc;
    history = {
      ignoreDups = true;
      share = false;
    };
    localVariables = {
      RPS1 = "";
    };
  };
}