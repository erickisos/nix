{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      roboto
      emacs-all-the-icons-fonts
      fira-code
    ];
  };
}
