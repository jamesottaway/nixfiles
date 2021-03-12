{ pkgs, inputs, ... }:

{
  services.nix-daemon.enable = true;
  nix.package = pkgs.nixFlakes;
  nix.registry.nixpkgs.flake = inputs.nixpkgs;
  nix.extraOptions = ''
    experimental-features = nix-command flakes ca-references
  '';
}
