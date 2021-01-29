{
  description = "$HOME/.dotfiles";

  inputs = {
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    darwin.url = github:LnL7/nix-darwin/master;
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = github:nix-community/home-manager;
    nixpkgs.url = github:NixOS/nixpkgs/nixpkgs-unstable;
    devshell.url = github:numtide/devshell;
  };

  outputs = { self, home-manager, nixpkgs, darwin, ... }@inputs:
  let
    pkgs = import nixpkgs {
      overlays = [ inputs.devshell.overlay ];
      system = "x86_64-darwin";
    };
  in
  {
    darwinConfigurations.b12y = darwin.lib.darwinSystem {
      modules = [
        ./darwin/default.nix
        ./darwin/b12y.nix
        ./home/manager.nix
        home-manager.darwinModules.home-manager
        { home-manager.users.james = ./home/b12y.nix; }
      ];
    };

    darwinConfigurations.hireup = darwin.lib.darwinSystem {
      modules = [
        ./darwin/default.nix
        ./darwin/hireup.nix
        ./home/manager.nix
        home-manager.darwinModules.home-manager
        { home-manager.users.jamesottaway = ./home/hireup.nix; }
      ];
    };

    devShell.x86_64-darwin = pkgs.callPackage ./shell.nix {};

    checks.x86_64-darwin = {
      b12y = self.darwinConfigurations.b12y.system;
      hireup = self.darwinConfigurations.hireup.system;
    };
  };
}
