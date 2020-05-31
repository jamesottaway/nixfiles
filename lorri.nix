{ config, pkgs, ... }:

let
  inherit (pkgs) lorri;
  pathInHome = path: config.users.users.james.home + path;
in

{
  environment.systemPackages = [
    lorri
  ];

  launchd.user.agents.lorri = {
    path = with pkgs; [ config.nix.package ];
    serviceConfig = {
      Label = "com.target.lorri";
      ProgramArguments = ["${lorri}/bin/lorri" "daemon"];
      StandardOutPath = toString (pathInHome /Library/Logs/lorri.log);
      StandardErrorPath = toString (pathInHome /Library/Logs/lorri.log);
      Sockets.lorri.SockPathName = toString (pathInHome /Library/Caches/com.github.target.lorri.lorri.lorri/daemon.socket);
    };
  };
}