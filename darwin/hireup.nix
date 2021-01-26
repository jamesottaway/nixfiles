{
  networking.hostName = "JamesBookPro";

  imports = [
    ./services/skhd.nix
    ./services/yabai.nix
    ./users/jamesottaway.nix
  ];
}
