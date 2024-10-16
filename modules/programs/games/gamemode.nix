{ pkgs, ... }: {
  programs.gamemode.enable = true;
  home-manager.sharedModules = [
    (_: {
      nixpkgs.config.allowUnfree = true;

      home.packages = with pkgs; [
        gamemode
      ];
    })
  ];
}