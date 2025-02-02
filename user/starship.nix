{ pkgs, ... }: 
{
  home.file.".config/starship.toml".source = ../.config/starship.toml;

  home.packages = [ pkgs.starship ];
}
