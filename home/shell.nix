{ pkgs, ... }:

{
  imports = [
    ./programs/alacritty.nix
    ./programs/bat.nix
    ./programs/direnv.nix
    ./programs/exa.nix
    ./programs/starship.nix
    ./programs/tmux.nix
    ./programs/vim.nix
    ./programs/zsh.nix
  ];

  home.packages = [
    pkgs.fd
    pkgs.ripgrep
    pkgs.yubikey-manager
  ];

  programs = {
    fzf.enable = true;
    jq.enable = true;
  };

  xdg.enable = true;
}
