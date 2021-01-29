{
  programs.direnv = {
    enable = true;
    enableNixDirenvIntegration = true;
    stdlib = builtins.readFile ../misc/direnvrc;
  };
}
