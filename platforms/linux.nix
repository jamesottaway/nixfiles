{ config, ... }:

{
  home.sessionVariables = {
    AWS_VAULT_BACKEND = "pass";
    AWS_VAULT_PASS_PREFIX = "aws-vault";
    AWS_VAULT_PASS_PASSWORD_STORE_DIR = config.programs.password-store.settings.PASSWORD_STORE_DIR;
  };
}
