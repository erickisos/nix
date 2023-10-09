{ pkgs, ... }: {
  home.username = "erickisos";
  home.homeDirectory = "/Users/erickisos";
  home.stateVersion = "23.05";
  programs.home-manager.enable = true;

  programs.git = {
    enable = true;
    includes = [{ path = "~/.config/nixpkgs/dotfiles/gitconfig"; }];
  };
}
