{ pkgs, ... }:

{
  fonts.enableFontDir = true;
  fonts.fonts = [
    pkgs.jetbrains-mono
  ];
}