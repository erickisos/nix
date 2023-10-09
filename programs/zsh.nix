{ config, lib, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "simple";
    };
    # extraConfig = builtins.readFile ../.dotfiles/.zshrc;
  };
}
