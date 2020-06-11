{ ... }:

{
  programs.tmux = {
    enable = true;
    baseIndex = 1;
    keyMode = "vi";
    shortcut = "a";
    extraConfig = ''
      set-option -g mouse on
    '';
  };
}