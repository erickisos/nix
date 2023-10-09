{ config, lib, pkgs, ... }:
{
  home.packages = with pkgs; [
    emacs29
    emacsPackages.doom
  ];
}
