{ pkgs, ... }:

{
  environment.systemPackages = [ 
    pkgs.sddm-astronaut
  ];

  services.displayManager = {
    sddm = {
      enable = true;
      wayland.enable = true;
      package = pkgs.kdePackages.sddm;
      extraPackages = [ pkgs.sddm-astronaut ];
      theme = "sddm-astronaut-theme";
    };
  };
}
