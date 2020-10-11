let
  sources = import ../nix/sources.nix;
  nixpkgs = sources.nixpkgs;
  darwin = import sources.darwin { inherit nixpkgs; };
in

darwin.system