{ config, lib, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    shellAliases = {
      ls = "ls --color=auto";
      ll = "ls -lah";
      dir = "dir --color=auto";
      vdir = "vdir --color=auto";
      grep = "grep --color=auto";
      fgrep = "fgrep --color=auto";
      egrep = "egrep --color=auto";
      update = "sudo nixos-rebuild switch";
    };
    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" "docker" "aws" "npm" ];
      theme = "simple";
    };
    initExtra = ''
      export PATH="$PATH:$HOME/.npm-packages/bin"

      if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
      . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
      fi
    '';
    # extraConfig = builtins.readFile ../.dotfiles/.zshrc;
  };
}
