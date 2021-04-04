{
  description = "$HOME/.dotfiles";

  inputs = {
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    darwin.url = github:jamesottaway/nix-darwin/fix/nix-flake-info;
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = github:nix-community/home-manager;
    nixpkgs.url = github:NixOS/nixpkgs/nixpkgs-unstable;
    armada = {
      url = "git+ssh://git@github.com/hireupau/armada?ref=nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, home-manager, nixpkgs, darwin, armada, ... }@inputs: {
    darwinConfigurations.b12y = darwin.lib.darwinSystem {
      modules = [
        ./darwin/default.nix
        ./darwin/b12y.nix
        ./home/manager.nix
        home-manager.darwinModule
        { home-manager.users.james = ./home/b12y.nix; }
      ];
    };

    darwinConfigurations.hireup = darwin.lib.darwinSystem {
      modules = [
        ./darwin/default.nix
        ./darwin/hireup.nix
        ./home/manager.nix
        self.hireup.darwinConfiguration
        home-manager.darwinModule
        { nixpkgs.overlays = [ armada.overlay ]; }
        { home-manager.users.jamesottaway = ./home/hireup.nix; }
        { home-manager.users.jamesottaway.imports = [ self.hireup.homeManagerConfiguration ]; }
      ];
    };

    hireup = {
      homeManagerConfiguration = import ./hireup/home-manager;
      darwinConfiguration = import ./hireup/nix-darwin;
    };

    checks.x86_64-darwin = {
      b12y = self.darwinConfigurations.b12y.system;
      hireup = self.darwinConfigurations.hireup.system;
    };
  };
}
