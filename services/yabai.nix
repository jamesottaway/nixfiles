{ pkgs, ... }:

{
  services.yabai = {
    enable = true;
    package = pkgs.yabai;
    config = {
      layout = "bsp";
      focus_follows_mouse = "autofocus";
    };
    extraConfig = ''
      yabai -m rule --add app='System Preferences' manage=off
      yabai -m rule --add app='Firefox' title='^Opening' manage=off
      yabai -m rule --add app='Firefox' title='Picture-in-Picture' manage=off
      yabai -m rule --add app='Wally' manage=off
      yabai -m rule --add app='1Password' title='Preferences' manage=off
      yabai -m space --padding abs:10:10:10:10
      yabai -m space --gap abs:10
    '';
  };
}