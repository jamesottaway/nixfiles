{ config, lib, pkgs, ... }:

let
  vault = lib.any (p: p == pkgs.aws-vault) config.home.packages;
  pass = config.programs.password-store.enable;
in

{
  home.sessionVariables = lib.optionalAttrs (vault && pass) {
    AWS_VAULT_BACKEND = "pass";
    AWS_VAULT_PASS_PREFIX = "aws-vault";
    AWS_VAULT_PASS_PASSWORD_STORE_DIR = config.programs.password-store.settings.PASSWORD_STORE_DIR;
  };
}
