{
  description = "My personal Nix configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-20.09-darwin";
    darwin.url = "github:LnL7/nix-darwin/master";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    ulid.url = github:jamesottaway/ulid;
    ulid.inputs.nixpkgs.follows = "nixpkgs";
    devshell.url = github:numtide/devshell;
  };

  outputs = { darwin, nixpkgs, ... }@inputs:
  let
    system = "x86_64-darwin";
    pkgs = import nixpkgs {
      overlays = [ inputs.devshell.overlay ];
      inherit system;
    };
  in
  {
    darwinConfigurations.b12y-MBP = darwin.lib.darwinSystem {
      modules = [
        ./b12y-MBP.nix
        inputs.ulid.module
      ];
    };

    darwinConfigurations.JamesBookPro16 = darwin.lib.darwinSystem {
      modules = [ ./JamesBookPro16.nix ];
    };

    devShell.${system} = pkgs.callPackage ./shell.nix {};
  };
}
