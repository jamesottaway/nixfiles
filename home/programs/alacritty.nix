{ pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      window.startup_mode = "Maximized";
      font.size = 16;
      shell = {
        program = "${pkgs.tmux}/bin/tmux";
        args = [ "new-session" "-A" "-s 0" ];
      };
    };
  };
}
