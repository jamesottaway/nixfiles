{ pkgs, ... }:

{
  services.dnsmasq = {
    alwaysKeepRunning = true;
    enable = true;
    servers = [ "1.1.1.1" "1.0.0.1" ];
    extraConfig = ''
      addn-hosts=${builtins.fetchurl https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts}
    '';
  };
}
