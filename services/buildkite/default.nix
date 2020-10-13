{
  services.buildkite-agent = {
    enable = true;
    tokenPath = ./token;
    extraConfig = ''
      no-pty=true
    '';
    openssh = {
      publicKeyPath = /dev/null;
      privateKeyPath = /dev/null;
    };
  };

  users.knownUsers = [ "buildkite-agent" ];
  users.users.buildkite-agent.createHome = true;
  users.users.buildkite-agent.uid = 1009;

  users.knownGroups = [ "buildkite-agent" ];
  users.groups.buildkite-agent.gid = 1009;
}