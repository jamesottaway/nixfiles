{
  networking.hostName = "JamesBookPro";

  imports = [
    ./base.nix
    ../services/skhd.nix
    ../services/yabai.nix
    ../users/jamesottaway.nix
  ];
}
