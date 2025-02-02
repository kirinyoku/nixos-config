{ pkgs, ...}: 

{
  environment.systemPackages = with pkgs; [
    go
    gopls
    gcc
    nodejs_22
    gcc
    rustup
  ];
}
