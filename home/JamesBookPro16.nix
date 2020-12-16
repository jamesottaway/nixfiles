{
  imports = [
    ./.
    ../contexts/outfit.nix
  ];

  home.sessionVariables = {
    HOME_MANAGER_CONFIG = "$HOME/.dotfiles/JamesBookPro16.nix";
  };
}
