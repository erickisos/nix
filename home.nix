{ config, pkgs, ... }:
let dotfilesDir = "./.dotfiles";
in {
  imports = [
    # ./programs/emacs.nix
    ./programs/cli.nix
    ./programs/clojure.nix
    ./programs/git.nix
    ./programs/rust.nix
    ./programs/zsh.nix
    ./programs/vim.nix
    ./programs/vscode.nix
  ];

  home.username = "erickisos";
  home.homeDirectory = "/${if pkgs.stdenv.isDarwin then "Users" else "home"}/erickisos";
  home.stateVersion = "23.05";
  home.packages = [
    pkgs.bashInteractive
    pkgs.nixpkgs-fmt
  ];

  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
  home.activation.linkFiles = config.lib.dag.entryAfter [ "writeBoundary" ] ''
  '';
}
