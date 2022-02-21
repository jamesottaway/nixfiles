{
  programs.direnv = {
    enable = true;
    nix-direnv = {
      enable = true;
      enableFlakes = true;
    };
    stdlib = builtins.readFile ../misc/direnvrc;
  };
}
