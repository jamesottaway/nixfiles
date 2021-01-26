{ pkgs, config, ... }:

{
  programs.vim.enable = true;
  home.sessionVariables.EDITOR = "${config.programs.vim.package}/bin/vim";
  programs.vscode.extensions = with pkgs.vscode-extensions; [
    vscodevim.vim
  ];
  programs.zsh.defaultKeymap = "viins";
}
