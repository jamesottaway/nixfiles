{
  networking.hostName = "JamesBookPro";

  imports = [
    ./base.nix
    ../services/yabai.nix
  ];
}
