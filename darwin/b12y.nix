{
  networking.hostName = "b12y-MBP";

  imports = [
    ./services/buildkite.nix
    ./system.nix
    ./users/james.nix
  ];
}
