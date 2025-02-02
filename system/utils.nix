{ pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    ripgrep
    unzip
    brightnessctl
    power-profiles-daemon
    mpvpaper
    slurp
    grim
    neovim
  ];

  programs = {
    thunar.enable = true;
  };

  services = {
    power-profiles-daemon.enable = true;
  };
}
