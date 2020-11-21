{
  description = "My personal Nix configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    darwin.url = "github:LnL7/nix-darwin/master";
    darwin.inputs.nixpkgs.follows = "nixpkgs";
    ulid.url = github:jamesottaway/ulid;
    ulid.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, darwin, nixpkgs, ... }@inputs:
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
  };
}
