{ nixpkgs ? import <nixpkgs> {
              overlays = [ (import ./overlay.nix) ];
            }
}:
nixpkgs.pkgs.haskellPackages.callCabal2nix "bobby" ./. {}
