{ ... }:

{
  programs.git = {
    enable = true;
    userName = "James Ottaway";
    aliases = {
      a = "add";
      amend = "commit --amend";
      cane = "commit --amend --no-edit";
      cm = "commit --message";
      cp = "cherry-pick";
      co = "checkout";
      d = "diff";
      ds = "diff --staged";
      fixup = "commit --fixup";
      l = "log --graph --oneline";
      r = "restore";
      rm = "rebase master";
      rom = "rebase origin/master";
      rim = "rebase --interactive master";
      riom = "rebase --interactive origin/master";
      rs = "restore --staged";
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
      "node_modules/"
    ];
  };

  programs.zsh.initExtra = builtins.readFile ../misc/git.zsh;
}
