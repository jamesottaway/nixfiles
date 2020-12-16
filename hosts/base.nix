{
  imports = [
    ../users
    ../nix/flake.nix
  ];

  environment.systemPackages = [
  ];

  programs = {
    vim.enable = true;
    zsh.enable = true;
  };
}
