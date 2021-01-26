{
  imports = [
    ./fonts.nix
    ./nix.nix
    ./nixpkgs.nix
    ./programs/gnupg.nix
    ./time.nix
  ];

  programs = {
    vim.enable = true;
    zsh.enable = true;
  };
}
