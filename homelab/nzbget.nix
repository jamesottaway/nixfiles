{ ... }:

{
  services.nzbget.enable = true;
  networking.firewall.allowedTCPPorts = [ 6789 ];
}
