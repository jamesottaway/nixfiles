{
  description = "$HOME/.dotfiles";

  inputs = {
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    darwin.url = github:LnL7/nix-darwin/master;
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = github:nix-community/home-manager;
    nixpkgs.url = github:NixOS/nixpkgs/nixpkgs-20.09-darwin;
    devshell.url = github:numtide/devshell;
  };

  outputs = { home-manager, nixpkgs, darwin, ... }@inputs:
  let
    pkgs = import nixpkgs {
      overlays = [ inputs.devshell.overlay ];
      system = "x86_64-darwin";
    };
  in
  {
    darwinConfigurations.b12y = darwin.lib.darwinSystem {
      modules = [
        ./hosts/b12y.nix
        ./system/darwin.nix
      ];
    };

    darwinConfigurations.hireup = darwin.lib.darwinSystem {
      modules = [
        ./hosts/hireup.nix
        ./system/darwin.nix
      ];
    };

    homeManagerConfigurations.b12y = home-manager.lib.homeManagerConfiguration rec {
      configuration = ./home/b12y.nix;
      homeDirectory = "/Users/${username}";
      username = "james";
      system = "x86_64-darwin";
    };

    homeManagerConfigurations.hireup = home-manager.lib.homeManagerConfiguration rec {
      configuration = ./home/hireup.nix;
      homeDirectory = "/Users/${username}";
      username = "jamesottaway";
      system = "x86_64-darwin";
    };

    devShell.x86_64-darwin = pkgs.callPackage ./shell.nix {};
  };
}