{ pkgs, ... }: {
  home-manager.sharedModules = [
    (_: {
      nixpkgs.config.allowUnfree = true;

      home.packages = with pkgs; [
        jetbrains-toolbox
      ];
    })
  ];
}