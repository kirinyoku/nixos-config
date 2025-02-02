{
  programs.ghostty = {
    enable = true;
    settings = {
      font-size = 12;
      theme = "catppuccin-mocha";
      window-padding-x = 3;
      window-padding-y = 3;
      gtk-titlebar = false;
      gtk-wide-tabs = false;
      desktop-notifications = false;
      confirm-close-surface = false;
      clipboard-read = "allow";
      clipboard-write = "allow";
      shell-integration = "zsh";
    };
  };
}
