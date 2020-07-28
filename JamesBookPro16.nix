{
  imports = [
    ./base.nix
    ./contexts/development.nix
    ./contexts/outfit.nix
    ./platforms/darwin.nix
  ];

  programs.home-manager.enable = true;

  home.sessionVariables = {
    HOME_MANAGER_CONFIG = "$HOME/.dotfiles/JamesBookPro16.nix";
  };
}
