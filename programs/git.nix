{ ... }:

{
  programs.git = {
    enable = true;
    userName = "James Ottaway";
    aliases = {
      a = "add";
      cm = "commit --message";
      co = "checkout";
      d = "diff";
      ds = "diff --staged";
      l = "log --graph --oneline";
      s = "status --short";
    };
    extraConfig = {
      checkout.defaultRemote = "origin";
      merge.conflictstyle = "diff3";
      push.default = "current";
      rebase.autosquash = true;
      status.short = true;
    };
    ignores = [
      "node_modules/"
    ];
  };
}