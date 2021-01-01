{ ... }:

let
  unstable = import <unstable> { };
in

{
  services.home-assistant = {
    enable = true;
    openFirewall = true;
    package = unstable.home-assistant.override {
      packageOverrides = self: super: {
        aiogithubapi = self.callPackage ./aiogithubapi.nix { };
        backoff = self.callPackage ./backoff.nix { };
      };
      extraPackages = ps: with ps; [
        aiogithubapi
        aiolifx
        defusedxml
        netdisco
        pynacl
        zeroconf
      ];
    };
  };
}
