{ identityFile }:

{
  "eu.nixbuild.net" = {
    identitiesOnly = true;
    identityFile = toString identityFile;
    extraOptions = {
      PubkeyAcceptedKeyTypes = "ssh-ed25519";
    };
  };
}
