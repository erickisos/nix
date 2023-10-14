{ pkgs, ... }:
{
  home.packages = with pkgs; [
    podiff
    gettext
  ];
}
