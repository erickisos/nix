{ config, lib, pkgs, ... }:
{
  programs.emacs = {
    enable = true;
    package = pkgs.emacs29;
    extraConfig = ''
      (setq standard-indent 2)
    '';
  };

  programs.zsh = {
    shellAliases = {
      emacs = "${pkgs.emacs29}/Applications/Emacs.app/Contents/MacOS/Emacs";
    };
  };
}
