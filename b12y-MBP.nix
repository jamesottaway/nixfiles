{
  imports = [
    ./base.nix
    ./contexts/development.nix
    ./contexts/personal.nix
    ./platforms/darwin.nix
  ];

  programs.home-manager.enable = true;

  home.sessionVariables = {
    HOME_MANAGER_CONFIG = "$HOME/.dotfiles/b12y-MBP.nix";
  };
}