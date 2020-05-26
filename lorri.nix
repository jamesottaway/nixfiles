{ config, pkgs, ... }:

let
  inherit (pkgs) lorri;
in

{
  environment.systemPackages = [
    pkgs.lorri
  ];

  launchd.daemons.lorri = {
    # "lorri" = {
      serviceConfig = {
        # Program = "${lorri}/bin/lorri";
        ProgramArguments = ["${lorri}/bin/lorri" "daemon"];
        Label = "com.target.lorri";
        KeepAlive = true;
        RunAtLoad = true;
        EnvironmentVariables = {
          HOME = "/var/root";
          PATH = "${pkgs.nix}/bin";
          NIX_PATH = "/nix/var/nix/profiles/per-user/root/channels";
        };
        StandardOutPath = toString /Library/Logs/lorri.log;
        StandardErrorPath = toString /Library/Logs/lorri.log;
        Sockets.lorri = {
          SockPathName = toString /var/root/Library/Caches/com.github.target.lorri.lorri.lorri/daemon.socket;
        };
      };
      # script = ''
      #   source ${config.system.build.setEnvironment}
      #   exec ${lorri}/bin/lorri daemon
      # '';
  };
}