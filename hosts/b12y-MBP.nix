{
  environment.darwinConfig = "/etc/macos/b12y-MBP.nix";
  networking.hostName = "b12y-MBP";

  imports = [
    ./base.nix
    ../platforms/darwin.nix
    ../programs/gnupg.nix
    ../services/buildkite
  ];
}
