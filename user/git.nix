{ config, pkgs, ...}:

{
  home.packages = [ pkgs.git ];
  programs.git = {
    enable = true;
    userName = "kirin";
    userEmail = "rudenokaleksandr21@gmail.com";
    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
