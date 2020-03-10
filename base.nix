{ pkgs, ... }:

{
  xdg.enable = true;

  home.packages = with pkgs; [
    aws-vault
    exa
    fd
    ripgrep
    tmux-up
    yubikey-manager
  ];

  programs = {
    home-manager = {
      enable = true;
    };

    bat.enable = true;
    direnv.enable = true;
    fzf.enable = true;
    jq.enable = true;
    starship.enable = true;

    zsh = {
      enable = true;
      defaultKeymap = "viins";
      dotDir = ".config/zsh";
      initExtra = builtins.readFile ./zshrc;
      history = {
        ignoreDups = true;
      };
      shellAliases = {
        cat = "bat";
        ls = "exa";
      };
    };

    gpg = {
      enable = true;
    };

    vim = {
      enable = true;
    };

    tmux = {
      enable = true;
      baseIndex = 1;
      keyMode = "vi";
      shortcut = "a";
      extraConfig = ''
        set-option -g mouse on
      '';
    };

    git = {
      enable = true;
      userName = "James Ottaway";
      userEmail = "james.ottaway@stacktracehq.com";
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
        merge.conflictstyle = "diff3";
        push.default = "current";
        rebase.autosquash = true;
        status.short = true;
      };
      ignores = [
        "node_modules/"
      ];
    };
  };
}
