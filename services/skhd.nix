{ pkgs, ... }:

{
  services.skhd = {
    enable = true;
    skhdConfig = ''
      meh - a : open ${pkgs.alacritty}/Applications/Alacritty.app
      meh - s : open /Applications/Slack.app
      meh - f : open /Applications/Firefox.app
      meh - c : open "${pkgs.vscode}/Applications/Visual Studio Code.app"
    '';
  };
}