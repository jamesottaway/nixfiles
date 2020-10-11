{
  services.buildkite-agent = {
    enable = true;
    tokenPath = ./token;
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