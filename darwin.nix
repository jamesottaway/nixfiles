{ pkgs, ... }:

{
  imports = [ ./base.nix ];

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
      };
    };

    tmux = {
      secureSocket = false;
    };
  };
}
