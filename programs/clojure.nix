{ pkgs, ... }: {
  home.packages = with pkgs; [
    (clojure.override { jdk = jdk17; })
    clojure-lsp
    babashka
    clj-kondo
    (leiningen.override { jdk = jdk17; })
  ];
}
