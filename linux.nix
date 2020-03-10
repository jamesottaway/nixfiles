{ pkgs, config, ... }:

{
  imports = [ ./base.nix ];

  xdg.enable = true;

  home = {
    sessionVariables = {
      EDITOR = "vim";
      AWS_VAULT_BACKEND = "pass";
      AWS_VAULT_PASS_PREFIX = "aws-vault";
      AWS_VAULT_PASS_PASSWORD_STORE_DIR = config.programs.password-store.settings.PASSWORD_STORE_DIR;
    };

    packages = with pkgs; [
      pinentry
      wally-cli
    ];
  };

  programs = {
    password-store.enable = true;

    zsh = {
      envExtra = ''
        . /home/james/.nix-profile/etc/profile.d/nix.sh
      '';
    };

    gpg = {
      enable = true;
    };
  };

  services = {
    gpg-agent = {
      enable = true;
      defaultCacheTtl = 3600;
      maxCacheTtl = 28800;
      extraConfig = ''
        pinentry-program /home/james/.nix-profile/bin/pinentry
      '';
    };

    lorri.enable = true;
  };
}
