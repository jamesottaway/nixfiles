{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  services.unifi = {
    enable = true;
    unifiPackage = pkgs.unifiStable;
  };

  networking.firewall.allowedTCPPorts = [ 8443 ];
}
