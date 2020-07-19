{
  services.nix-daemon.enable = true;

  system.defaults.NSGlobalDomain = {
    AppleFontSmoothing = 0;
    AppleShowScrollBars = "Always";
    NSAutomaticCapitalizationEnabled = false;
    NSAutomaticDashSubstitutionEnabled = false;
    NSAutomaticPeriodSubstitutionEnabled = false;
    NSAutomaticQuoteSubstitutionEnabled = false;
    NSAutomaticSpellingCorrectionEnabled = false;
    NSDisableAutomaticTermination = true;
    NSDocumentSaveNewDocumentsToCloud = false;
    NSNavPanelExpandedStateForSaveMode = true;
    NSNavPanelExpandedStateForSaveMode2 = true;
    NSWindowResizeTime = "0.01";
    PMPrintingExpandedStateForPrint = true;
    PMPrintingExpandedStateForPrint2 = true;
    "com.apple.springing.delay" = "0";
    "com.apple.springing.enabled" = true;
    "com.apple.swipescrolldirection" = false;
  };

  system.defaults.dock = {
    autohide = true;
    autohide-delay = "0";
    autohide-time-modifier = "0";
    launchanim = false;
    mineffect = "scale";
    minimize-to-application = true;
    show-recents = false;
    static-only = true;
  };

  system.defaults.finder = {
    _FXShowPosixPathInTitle = true;
  };

  system.keyboard = {
    enableKeyMapping = true;
    remapCapsLockToEscape = true;
  };
}