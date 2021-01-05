{ pkgs, ... }:

{
  services.yabai = {
    enable = true;
    package = pkgs.yabai;
    config = {
      layout = "bsp";
    };
    extraConfig = ''
      yabai -m rule --add app='System Preferences' manage=off
      yabai -m rule --add app='Firefox' title='^Opening' manage=off
      yabai -m rule --add app='Firefox' title='Picture-in-Picture' manage=off
      yabai -m rule --add app='Wally' manage=off
      yabai -m rule --add app='1Password' title='Preferences' manage=off
      yabai -m rule --add app='MeetingBar' title='MeetingBar Preferences' manage=off
      yabai -m rule --add app='Docker Desktop' title='Settings' manage=off
      yabai -m rule --add app='Spotify' manage=off
    '';
  };
}