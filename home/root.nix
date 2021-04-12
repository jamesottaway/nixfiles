{
  programs.ssh.enable = true;

  programs.ssh.matchBlocks = import ./ssh/nixbuild.nix {
    identityFile = /var/root/.ssh/nixbuild;
  };
}
