let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  home-manager = import sources.home-manager { inherit pkgs; };
in

pkgs.mkShell {
  buildInputs = [
    home-manager.home-manager
  ];

  shellHook = ''
    export NIX_PATH="nixpkgs=${sources.nixpkgs}"
  '';
}