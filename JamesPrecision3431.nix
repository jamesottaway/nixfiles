{
  imports = [
    ./base.nix
    ./contexts/development.nix
    ./contexts/stacktrace.nix
    ./platforms/linux.nix
    ./programs/password-store.nix
    ./services/gpg-agent.nix
    ./services/lorri.nix
  ];

  programs.home-manager.enable = true;

  home.sessionVariables = {
    HOME_MANAGER_CONFIG = "$HOME/.dotfiles/JamesPrecision3431.nix";
  };
}