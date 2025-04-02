{
  nixpkgs,
  aikadm-frontend,
  ...
}:
{
  default = _: prev: {
    aikadm = prev.callPackage (import ./pkgs.nix) { inherit aikadm-frontend nixpkgs; };
  };
}
