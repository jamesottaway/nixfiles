{
  networking.hostName = "b12y-MBP";

  imports = [
    ./services/buildkite.nix
    ./users/james.nix
  ];
}
