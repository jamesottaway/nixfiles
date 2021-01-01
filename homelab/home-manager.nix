{ pkgs, ... }:

{
  environment.systemPackages = [
    (pkgs.callPackage <home-manager/home-manager> {})
  ];
}
