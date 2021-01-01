{ config, ... }:

{
  security.sudo.wheelNeedsPassword = false;
  users.users.james.extraGroups = [ config.users.groups.wheel.name ];
}
