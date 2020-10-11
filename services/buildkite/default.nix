{
  services.buildkite-agent = {
    enable = true;
    tokenPath = ./token;
    extraConfig = ''
      no-pty=true
    '';
    openssh = {
      publicKeyPath = "/dev/null";
      privateKeyPath = "/dev/null";
    };
  };

  users.knownUsers = [ "buildkite-agent" ];
  users.users.buildkite-agent = {
    createHome = true;
    uid = 1009;
  };
}