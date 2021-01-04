{
  imports = [
    ../nix/flake.nix
    ../programs/gnupg.nix
  ];

  programs = {
    vim.enable = true;
    zsh.enable = true;
  };
}
