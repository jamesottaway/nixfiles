{ pkgs, lib }:

pkgs.mkDevShell {
  packages = [
    pkgs.buildkite-cli
  ];

  motd = "";
  commands = lib.mkForce [];
}