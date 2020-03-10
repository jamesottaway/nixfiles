import (builtins.getAttr builtins.currentSystem {
    x86_64-linux = ./linux.nix;
    x86_64-darwin = ./darwin.nix;
})