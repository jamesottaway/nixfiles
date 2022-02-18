{
  programs.git = {
    enable = true;
    userName = "James Ottaway";
    aliases = {
      a = "add";
      b = "branch";
      amend = "commit --amend";
      cane = "commit --amend --no-edit";
      cm = "commit --message";
      cp = "cherry-pick";
      co = "checkout";
      d = "diff";
      ds = "diff --staged";
      fixup = "commit --fixup";
      l = "log --graph --oneline HEAD origin/HEAD";
      r = "restore";
      roh = "rebase origin/HEAD";
      rhoh = "reset --hard origin/HEAD";
      rim = "rebase --interactive main";
      riom = "rebase --interactive origin/main";
      rs = "restore --staged";
      sw = "switch";
    };
    delta.enable = true;
    extraConfig = {
      checkout.defaultRemote = "origin";
      commit.verbose = true;
      credential.helper = "osxkeychain";
      init.defaultBranch = "main";
      merge.conflictstyle = "diff3";
      pull.rebase = false;
      push.default = "current";
      rebase.autosquash = true;
      rebase.autostash = true;
      status.short = true;
    };
    ignores = [
      "result"
      "node_modules/"
    ];
  };

  programs.zsh.initExtra = builtins.readFile ../misc/git.zsh;
}
