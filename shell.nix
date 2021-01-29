{ pkgs, lib }:

pkgs.mkDevShell {
  name = ".dotfiles";
  packages = [
    pkgs.buildkite-cli
    pkgs.buildkite-agent
  ];

  motd = "";
  commands = lib.mkForce [];
}
