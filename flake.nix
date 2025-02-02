{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix.url = "github:danth/stylix/release-24.11";
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    catppuccin.url = "github:catppuccin/nix";
  };

  outputs = { self, nixpkgs, home-manager, stylix, spicetify-nix, catppuccin }@inputs: 
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
	specialArgs = { inherit inputs; };
	system = "x86_64-linux";
	modules = [
	  ./configuration.nix
	  stylix.nixosModules.stylix
	  catppuccin.nixosModules.catppuccin
	];
    };

    homeConfigurations.kirin = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages."x86_64-linux";
      extraSpecialArgs = { inherit inputs; };
      modules = [
	./home.nix
      ];
    };
  };
}
