{
  home.file.".hammerspoon/init.lua".source = ./init.lua;

  home.file.".hammerspoon/Spoons/ControlEscape.spoon".source = builtins.fetchTarball {
    url = "https://github.com/jasonrudolph/ControlEscape.spoon/archive/v1.0.1.tar.gz";
    sha256 = "05fflaahb8sa99nb1kpr3342gwga18815zqb9babs68r6qc2i918";
  };
}
