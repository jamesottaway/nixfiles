{ pkgs, ... }:

{
  services.dnsmasq = {
    alwaysKeepRunning = true;
    enable = true;
    servers = [ "1.1.1.1" "1.0.0.1" ];
  };
}
