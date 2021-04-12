let
  nixbuild = {
    hostName = "eu.nixbuild.net";
    system = "x86_64-linux";
    maxJobs = 100;
    supportedFeatures = [ "benchmark" "big-parallel" ];
  };
in

{
  nix.distributedBuilds = true;
  nix.buildMachines = [ nixbuild ];
  nix.extraOptions = ''
    builders-use-substitutes = true
  '';

  programs.ssh.knownHosts = {
    nixbuild = {
      hostNames = [ nixbuild.hostName ];
      publicKey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPIQCZc54poJ8vqawd8TraNryQeJnvH1eLpIDgbiqymM";
    };
  };
}
