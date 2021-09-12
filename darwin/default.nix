{
  imports = [
    ./fonts.nix
    ./nix.nix
    ./nixbuild.nix
    ./nixpkgs.nix
    ./programs/gnupg.nix
    ./system.nix
    ./time.nix
    ./vim.nix
  ];

  programs = {
    zsh.enable = true;
  };
}
