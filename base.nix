{ pkgs, ... }:

{
  imports = [
    programs/alacritty.nix
    programs/bat.nix
    programs/exa.nix
    programs/vim.nix
    programs/zsh
  ];

  home = {
    username = "James";

    packages = with pkgs; [
      fd
      ripgrep
    ];
  };

  programs = {
    fzf.enable = true;
    gpg.enable = true;
    jq.enable = true;
    starship.enable = true;
  };
}