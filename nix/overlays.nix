{
  nixpkgs,
  html-greet-frontend,
  ...
}: {
  default = final: _prev: let
    packages = import ./pkgs.nix {
      inherit nixpkgs;
      frontend = html-greet-frontend.packages.${final.system}.default;
      system = final.system;
    };
  in {
    html-greet = packages.default;
  };
}
