{ ... }:

{
  programs.git = {
    enable = true;
    userName = "James Ottaway";
    aliases = {
      a = "add";
      amend = "commit --amend";
      cm = "commit --message";
      cp = "cherry-pick";
      co = "checkout";
      d = "diff";
      ds = "diff --staged";
      fixup = "commit --fixup";
      l = "log --graph --oneline";
      r = "restore";
    };
    extraConfig = {
      checkout.defaultRemote = "origin";
      credential.helper = "osxkeychain";
      init.defaultBranch = "main";
      merge.conflictstyle = "diff3";
      pull.rebase = false;
      push.default = "current";
      rebase.autosquash = true;
      status.short = true;
    };
    ignores = [
      "result"
      ".direnv"
      "node_modules/"
    ];
  };
}