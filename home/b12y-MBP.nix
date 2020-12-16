{
  imports = [
    ./.
    ../contexts/personal.nix
  ];

  home.sessionVariables = {
    HOME_MANAGER_CONFIG = "$HOME/.dotfiles/b12y-MBP.nix";
  };
}
