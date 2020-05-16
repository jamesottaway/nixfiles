[
  (
    self: super: {
      tmux-up = super.callPackage ./packages/tmux-up.nix {};
      git-filter-repo = super.callPackage ./packages/git-filter-repo.nix {};
      wally-cli = super.callPackage ./packages/wally-cli.nix { wally-cli = super.wally-cli; };
    }
  )
]