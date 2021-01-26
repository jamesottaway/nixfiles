{
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
    history = {
      ignoreDups = true;
      share = false;
    };
    localVariables = {
      RPS1 = "";
    };
  };
}
