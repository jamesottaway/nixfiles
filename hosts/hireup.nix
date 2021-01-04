{
  networking.hostName = "JamesBookPro";

  imports = [
    ./base.nix
    ../platforms/darwin.nix
    ../programs/gnupg.nix
    ../services/yabai.nix
  ];
}
