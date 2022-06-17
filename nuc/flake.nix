{
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixos-22.05-small;
  };

  outputs = { self, nixpkgs }@inputs: {
    nixosConfigurations.nuc = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ ./configuration.nix ];
      specialArgs = inputs;
    };
  };
}
