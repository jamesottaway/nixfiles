{ ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      window.startup_mode = "Maximized";
      font.size = 16;
      font.normal.family = "JetBrains Mono";
    };
  };
}
