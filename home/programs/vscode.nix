{ pkgs, ... }:

let
  inherit (pkgs) vscode-extensions;
  inherit (pkgs.vscode-utils) buildVscodeMarketplaceExtension;

  arrterian.nix-env-selector = buildVscodeMarketplaceExtension {
    mktplcRef = {
      name = "nix-env-selector";
      publisher = "arrterian";
      version = "0.1.2";
      sha256 = "1n5ilw1k29km9b0yzfd32m8gvwa2xhh6156d4dys6l8sbfpp2cv9";
    };
  };
in

{
  programs.vscode = {
    enable = true;
    extensions = with vscode-extensions; [
      arrterian.nix-env-selector
      bbenoist.Nix
      vscodevim.vim
    ];
    userSettings = {
      editor.fontFamily = "JetBrains Mono";
      editor.fontLigatures = false;
      editor.fontSize = 16;
      editor.formatOnSave = true;
      editor.minimap.enabled = false;
      editor.renderFinalNewline = false;
      editor.renderWhitespace = "boundary";
      editor.rulers = [ 80 120 ];
      editor.scrollBeyondLastLine = false;
      editor.smoothScrolling = true;
      editor.tabSize = 2;
      explorer.openEditors.visible = 0;
      files.exclude = {
        "**/result" = true;
      };
      files.insertFinalNewline = true;
      files.trimFinalNewlines = true;
      markdown.preview.doubleClickToSwitchToEditor = false;
      merge-conflict.codeLens.enabled = false;
      telemetry.enableTelemetry = false;
      vim.easymotion = true;
      vim.easymotionMarkerFontFamily = "JetBrains Mono";
      window.titleBarStyle = "native";
      workbench.enableExperiments = false;
      workbench.settings.enableNaturalLanguageSearch = false;
      workbench.startupEditor = "readme";
    };
  };
}
