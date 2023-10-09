{ pkgs, ... }:
{
  home.packages = with pkgs; [
    cmake
    gcc
    opencv
    eigen
    gtest
  ];
}
