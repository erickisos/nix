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
    tmux
    tree
    unrar
    unzip
    wget

    # Reorganize those dependencies.
    gnuplot
    vtk
    plantuml
    scala
    tesseract
    faust
    guile
    yarn
    # libxext
  ];
}
