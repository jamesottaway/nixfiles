{
  environment.darwinConfig = "/etc/macos/b12y-MBP.nix";

  imports = [
    ./base.nix
    ./platforms/darwin.nix
    ./programs/gnupg.nix
    ./services/buildkite
  ];
}