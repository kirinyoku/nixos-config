{ inputs, pkgs, ... }:

{
  imports = [
    # inputs.spicetify-nix.nixosModules.default
    inputs.spicetify-nix.homeManagerModules.default
  ];

  programs.spicetify = 
    let
      spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
    in
    {
      enable = true;
      theme = spicePkgs.themes.catppuccin;
      colorScheme = "mocha";
    };
}
