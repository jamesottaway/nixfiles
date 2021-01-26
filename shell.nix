{ pkgs, lib }:

pkgs.mkDevShell {
  packages = [
    pkgs.buildkite-cli
    pkgs.buildkite-agent
  ];

  motd = "";
  commands = lib.mkForce [];
}
