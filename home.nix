{ config, pkgs, ... }:
let dotfilesDir = "./.dotfiles";
in {
  imports = [
    ./programs/emacs.nix
    ./programs/cli.nix
    ./programs/clisp.nix
    ./programs/clojure.nix
    ./programs/cpp.nix
    ./programs/git.nix
    ./programs/python.nix
    ./programs/rust.nix
    ./programs/text.nix
    ./programs/vim.nix
    ./programs/vscode.nix
    ./programs/zsh.nix
  ];

  home.username = "erickisos";
  home.homeDirectory = "/${if pkgs.stdenv.isDarwin then "Users" else "home"}/erickisos";
  home.stateVersion = "23.05";
  home.packages = [
    pkgs.bashInteractive
    pkgs.nixpkgs-fmt
    pkgs.zstd
  ];

  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
  home.activation.linkFiles = config.lib.dag.entryAfter [ "writeBoundary" ] ''
  '';
}
