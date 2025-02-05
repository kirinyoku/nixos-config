{ pkgs, ... }:

{
  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.kirin = {
      isNormalUser = true;
      description = "Oleksandr";
      extraGroups = [ "networkmanager" "wheel" "docker" ];
      packages = with pkgs; [];
    };
  };

  services.getty.autologinUser = "kirin";
}
