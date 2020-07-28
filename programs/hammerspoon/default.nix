{ pkgs, config, ... }:

{
  home.file.".hammerspoon/init.lua".source = ./init.lua;

  home.file.".hammerspoon/Spoons/ControlEscape.spoon".source = builtins.fetchGit {
    url = "https://github.com/jasonrudolph/ControlEscape.spoon.git";
    ref = "master";
  };
}
