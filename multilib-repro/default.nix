{ pkgs ?
  let
    rev="1c3fe55ad329cbcb28471bb30f05c9827f724c76";
    hash="1cb124rcycigz060wsix7a9bnyjdgwqns2fynkyfn20jgwxds6kg";
  in
  import (
    fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
      sha256 = hash;
    }
  ) {}
}:

pkgs.haskellPackages.callCabal2nix "multilib-repro" ./. {}
