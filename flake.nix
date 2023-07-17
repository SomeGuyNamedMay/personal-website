{
  inputs = { idr2nix.url = "git+https://git.sr.ht/~thatonelutenist/idr2nix?ref=trunk"; };
  description = "Simple Test Package";

  outputs = { self, nixpkgs, idr2nix }:
    idr2nix.idris.single {
      packageName = "website";
      sources = builtins.fromJSON (builtins.readFile ./website.json);
      ipkg = "website.ipkg";
      src = ./.;
      idris2api = true;
    };
}
