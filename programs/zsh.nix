{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      ll = "ls -lah";
      update = "sudo nixos-rebuild switch";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" "docker" "aws" "npm" ];
      theme = "simple";
    };
    # extraConfig = builtins.readFile ../.dotfiles/.zshrc;
  };
}
