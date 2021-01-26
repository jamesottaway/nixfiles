{ pkgs, ... }:

let
  yabai = "${pkgs.yabai}/bin/yabai";
in

{
  services.skhd = {
    enable = true;
    skhdConfig = ''
      meh - a : open ${pkgs.alacritty}/Applications/Alacritty.app
      meh - s : open /Applications/Slack.app
      meh - f : open /Applications/Firefox.app
      meh - c : open "${pkgs.vscode}/Applications/Visual Studio Code.app"
      meh - z : ${yabai} -m window --toggle zoom-fullscreen
      meh - q : ${yabai} -m window --display recent && ${yabai} -m display --focus recent
      meh - left : ${yabai} -m window --swap west
      meh - down : ${yabai} -m window --swap south
      meh - up : ${yabai} -m window --swap north
      meh - right : ${yabai} -m window --swap east
    '';
  };
}