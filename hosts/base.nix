{
  imports = [
    ../config/time.nix
    ../nix/flake.nix
    ../nix/config.nix
    ../programs/gnupg.nix
  ];

  programs = {
    vim.enable = true;
    zsh.enable = true;
  };
}
