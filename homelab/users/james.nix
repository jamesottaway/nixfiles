{ pkgs, ... }:

{
  users.users.james = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;

    openssh.authorizedKeys.keyFiles = [ ../ssh/yubikey.pub ];
  };
}
