{ config, pkgs, ... }:

{
  imports = [
    ./user/git.nix
    ./user/nvim.nix
    ./user/ghostty.nix
    ./user/waybar.nix
    ./user/hyprland.nix
    ./user/wofi.nix
    ./user/zsh.nix
    ./user/starship.nix
    ./user/hyfetch.nix
    ./user/firefox.nix
    ./user/telegram.nix
    ./user/discord.nix
    ./user/music.nix
    ./user/ui-toolkit.nix
  ];

  home = {
    username = "kirin";
    homeDirectory = "/home/kirin";
    stateVersion = "24.11"; # Please read the comment before changing.
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
