{ pkgs, ... }:

{
  home.packages = with pkgs; [
    go-jira
  ];

  programs.zsh.initExtra = ''
    eval "$(jira --completion-script-bash)"
  '';
}
