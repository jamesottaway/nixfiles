{
  environment.darwinConfig = "/etc/macos/JamesBookPro16.nix";
  networking.hostName = "JamesBookPro16";

  imports = [
    ./base.nix
    ./platforms/darwin.nix
    ./programs/gnupg.nix
    ./services/yabai.nix
  ];
}
