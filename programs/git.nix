{
  programs.git = {
    enable = true;
    userName = "Erick G. Islas Osuna";
    userEmail = "erickisos653@gmail.com";
    ignores = [ "*~" ".DS_Store" ".direnv" ".env" ".rgignore" ".lsp/.cache" ".clj-kondo/.cache" ];
    extraConfig = {
      init = { defaultBranch = "main"; };
      pull = { ff = "only"; };
      push = { autoSetupRemote = "true"; };
    };
    includes = [{ path = "../.dotfiles/.gitconfig"; }];
  };
}
