{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
      let
	flakeDir = "~/personal/dotfiles";
      in {
	rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
	upd = "nix flake update ${flakeDir}";
	upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";

	hms = "home-manager switch --flake ${flakeDir}";

	conf = "nvim ${flakeDir}/configuration.nix";

	l = "ls -la";
	ll = "ls -l";
    };

    initExtra = '' 
      eval "$(starship init zsh)" 
    '';

    sessionVariables = {
      EDITOR = "nvim";
      VISUAL = "nvim";
      XDG_RUNTIME_DIR = "/run/user/$(id -u)";
    };
  };
}
