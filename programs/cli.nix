{ config, lib, pkgs, ... }:
{
  home.packages = with pkgs; [
    coreutils
    awscli
    aspell
    aspellDicts.en
    aspellDicts.en-computers
    curl
    docker-compose
    fd
    ffmpeg
    gnumake
    gnugrep
    go
    htop
    jq
    mpv
    neofetch
    nodejs
    opencv
    ripgrep
    tree
    unrar
    unzip
    wget
  ];
}
