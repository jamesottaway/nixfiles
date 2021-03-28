{ pkgs, ... }:

{
  imports = [
    ./fonts.nix
    ./nix.nix
    ./nixpkgs.nix
    ./programs/gnupg.nix
    ./system.nix
    ./time.nix
  ];

  environment.systemPackages = [
    pkgs.cachix
  ];

  programs = {
    vim.enable = true;
    zsh.enable = true;
  };
}
