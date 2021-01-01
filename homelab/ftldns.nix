{ stdenv, fetchFromGitHub, nettle, m4, gmp }:

stdenv.mkDerivation rec {
  pname = "ftldns";
  version = "5.0";

  buildInputs = [ nettle m4 gmp.static ];

  src = fetchFromGitHub {
    owner = "pi-hole";
    repo = "FTL";
    rev = "v${version}";
    sha256 = "1pz7azqi1mpxwgshnc4n8x07hkipl7h3808zcdpzwg0wrg3yp42s";
  };
}
