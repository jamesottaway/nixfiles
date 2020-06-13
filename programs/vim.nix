{ config, ... }:

{
  programs.vim.enable = true;
  home.sessionVariables.EDITOR = "${config.programs.vim.package}/bin/vim";
}