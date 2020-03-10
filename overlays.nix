[
  (
    self: super: {
      tmux-up = super.callPackage ./packages/tmux-up.nix {};
      git-filter-repo = super.callPackage ./packages/git-filter-repo.nix {};
    }
  )
]