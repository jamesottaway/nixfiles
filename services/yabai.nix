{
  services.yabai = {
    enable = true;
    package = pkgs.yabai;
    extraConfig = ''
      yabai -m rule --add app='System Preferences' manage=off
      yabai -m space --padding abs:10:10:10:10
      yabai -m space --gap abs:10
    '';
  };
}