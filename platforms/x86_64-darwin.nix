{ pkgs, ... }:

{
  home = {
    sessionVariables = {
      EDITOR = "code";
    };

    packages = with pkgs; [
      lorri
    ];
  };

  programs = {
    alacritty = {
      enable = true;
      settings = {
        window.startup_mode = "Maximized";
        font.size = 16;
      };
    };

    tmux = {
      secureSocket = false;
    };
  };
}
