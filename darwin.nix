{ pkgs, ... }:

{
  imports = [ ./base.nix ];

  home = {
    sessionVariables = {
      EDITOR = "code";
    };
  };

  programs = {
    zsh = {
      envExtra = ''
        . /home/james/.nix-profile/etc/profile.d/nix.sh
      '';
    };
  };
}
