{
  description = "$HOME/.dotfiles";

  inputs = {
    nixpkgs.url = github:NixOS/nixpkgs/nixpkgs-20.09-darwin;
    home-manager.url = github:nix-community/home-manager;
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    devshell.url = github:numtide/devshell;
  };

  outputs = { home-manager, nixpkgs, ... }@inputs:
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
    homeManagerConfigurations.b12y-MBP = home-manager.lib.homeManagerConfiguration {
      inherit homeDirectory system username;
      configuration = ./b12y-MBP.nix;
    };

    homeManagerConfigurations.JamesBookPro16 = home-manager.lib.homeManagerConfiguration {
      inherit homeDirectory system username;
      configuration = ./JamesBookPro16.nix;
    };

    devShell.${system} = pkgs.callPackage ./shell.nix {};
  };
}