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
  nixpkgs.config.allowUnfree = true;

  programs.vscode = {
    enable = true;
    extensions = with vscode-extensions; [
      arrterian.nix-env-selector
      bbenoist.Nix
      vscodevim.vim
    ];
  };
}