{ ... }:

{
  imports = [
    ../programs/hammerspoon
  ];

  programs.tmux.secureSocket = false;
}
