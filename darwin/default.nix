{
  imports = [
    ./fonts.nix
    ./nix.nix
    ./nixbuild.nix
    ./nixpkgs.nix
    ./programs/gnupg.nix
    ./system.nix
    ./time.nix
  ];

  programs = {
    vim.enable = true;
    zsh.enable = true;
  };
}
