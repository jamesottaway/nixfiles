{
  environment.darwinConfig = "/etc/macos/JamesBookAir.nix";

  imports = [
    ./base.nix
    ./launchd/lorri.nix
    ./platforms/darwin.nix
    ./programs/gnupg.nix
  ];
}