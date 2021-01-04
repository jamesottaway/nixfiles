{
  networking.hostName = "b12y-MBP";

  imports = [
    ./base.nix
    ../services/buildkite.nix
    ../users/james.nix
  ];
}
