{
  inputs = {
    nixos.url = github:NixOS/nixpkgs/nixos-21.11-aarch64;
  };

  outputs = { self, nixos }: {
    nixosConfiguration = nixos.lib.nixosSystem {
      system = "aarch64-linux";
      modules = [
        ./default.nix
        ./sdcard.nix
      ];
    };
  };
}
