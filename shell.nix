{ nixpkgs ? import <nixpkgs> {
              overlays = [ (import ./overlay.nix) ];
            }
}:
(import ./default.nix { inherit nixpkgs; }).env
