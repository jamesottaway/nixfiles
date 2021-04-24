{
  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixpkgs-unstable;

    darwin = {
      url = github:LnL7/nix-darwin/master;
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = github:nix-community/home-manager;
      inputs.nixpkgs.follows = "nixpkgs";
    };

    armada = {
      url = "git+ssh://git@github.com/hireupau/armada?ref=nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, darwin, home-manager, armada, ... }: {
    lib = {
      hireup = {
        homeManagerConfiguration = import ./hireup/home-manager;
        darwinConfiguration = import ./hireup/nix-darwin;
      };
    };

    darwinConfigurations = {
      b12y = darwin.lib.darwinSystem {
        modules = [
          ./darwin/default.nix
          ./darwin/b12y.nix
          ./home/manager.nix
          home-manager.darwinModule
          {
            home-manager.users = {
              root = ./home/root.nix;
              james = self.homeManagerConfigurations."james@b12y";
            };
          }
        ];
      };

      hireup = darwin.lib.darwinSystem {
        modules = [
          ./darwin/default.nix
          ./darwin/hireup.nix
          ./home/manager.nix
          self.lib.hireup.darwinConfiguration
          home-manager.darwinModule
          { nixpkgs.overlays = [ armada.overlay ]; }
          {
            home-manager.users = {
              root = ./home/root.nix;
              jamesottaway = self.homeManagerConfigurations."jamesottaway@hireup";
            };
          }
        ];
      };
    };

    homeManagerConfigurations = {
      "james@b12y" = {
        imports = [
          ./home/default.nix
          ./home/b12y.nix
          ./home/darwin.nix
          ./home/dev.nix
          ./home/shell.nix
        ];
      };

      "jamesottaway@hireup" = {
        imports = [
          ./home/default.nix
          ./home/hireup.nix
          ./home/darwin.nix
          ./home/dev.nix
          ./home/shell.nix
          self.lib.hireup.homeManagerConfiguration
        ];
      };
    };

    checks.x86_64-darwin = {
      b12y = self.darwinConfigurations.b12y.system;
      hireup = self.darwinConfigurations.hireup.system;
    };
  };
}
