{
  environment.darwinConfig = "/etc/macos/JamesBookPro16.nix";

  imports = [
    ./base.nix
    ./platforms/darwin.nix
    ./programs/gnupg.nix
    ./services/yabai.nix
  ];
}
