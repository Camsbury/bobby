selfPkgs: superPkgs:
let
  # hedgehogSrc = superPkgs.fetchFromGitHub {
  #   owner = "hedgehogqa";
  #   repo = "haskell-hedgehog";
  #   sha256 = "1n16r053qcfb49cbmqhxrfw0f98c7gfh1lch6bcj9bd4v8y47nsg";
  #   rev = "4fa34205ee16d0bacc58063a2bed8dcc1eda22fe";
  # };
  hedgehogFnSrc = superPkgs.fetchFromGitHub {
    owner = "qfpl";
    repo = "hedgehog-fn";
    sha256 = "1a722d56ilniharyy4rjqrm8mdb02iiyxixhwk66g4ybvw1bpxv7";
    rev = "6fd784f4e6a6440f50086ec3337ce303f1271a3e";
  };
  # hedgehogOpts = {
  #   optSubpath = ./hedgehog;
  # };
in
  {
    haskellPackages = superPkgs.haskellPackages.override {
      overrides = self: super: {
        # hedgehog =
        #   super.callCabal2nixWithOptions "hedgehog" hedgehogSrc hedgehogOpts {};
        hedgehog-fn =
          super.callCabal2nix "hedgehog-fn" hedgehogFnSrc {};
      };
    };
  }
