{ pkgs, ... }: {
  home-manager.sharedModules = [
    (_: {
      nixpkgs.config.allowUnfree = true;

      home.packages = with pkgs; [
        (discord.override {
          withVencord = true;
        })
      ];


      # Ensure the Discord desktop file is available (optional)
      # programs.discord.enable = true;  # This line doesn't exist; Discord isn't a program in home-manager
      xdg.configFile."Vencord/themes/catppuccin.theme.css".source = ./catppuccin.css;
    })
  ];
}