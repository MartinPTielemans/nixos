{
  inputs,
  pkgs,
  ...
}:
{
  home-manager.sharedModules = [
    (_: {
      home.packages = with pkgs; [
        inputs.zen-browser.packages.${system}.default
      ];
    })
  ];
}
