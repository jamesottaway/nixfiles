{
  description = "$HOME/.dotfiles";


  inputs = {
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    darwin.url = github:LnL7/nix-darwin/master;
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    home-manager.url = github:nix-community/home-manager;
    nixpkgs.url = github:NixOS/nixpkgs/nixpkgs-20.09-darwin;
    ulid.inputs.nixpkgs.follows = "nixpkgs";
    ulid.url = github:jamesottaway/ulid;
    devshell.url = github:numtide/devshell;
  };

  outputs = { home-manager, nixpkgs, darwin, ... }@inputs:
  let
    homeDirectory = /Users/james;
    system = "x86_64-darwin";
    username = "James";

    pkgs = import nixpkgs {
      overlays = [ inputs.devshell.overlay ];
      inherit system;
    };
  in
  {
    darwinConfigurations.b12y-MBP = darwin.lib.darwinSystem {
      modules = [
        ./hosts/b12y-MBP.nix
        inputs.ulid.module
      ];
    };

    darwinConfigurations.JamesBookPro16 = darwin.lib.darwinSystem {
      modules = [ ./hosts/JamesBookPro16.nix ];
    };

    homeManagerConfigurations.b12y-MBP = home-manager.lib.homeManagerConfiguration {
      inherit homeDirectory system username;
      configuration = ./home/b12y-MBP.nix;
    };

    homeManagerConfigurations.JamesBookPro16 = home-manager.lib.homeManagerConfiguration {
      inherit homeDirectory system username;
      configuration = ./home/JamesBookPro16.nix;
    };

    devShell.${system} = pkgs.callPackage ./shell.nix {};
  };
}