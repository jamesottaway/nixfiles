{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "git-filter-repo";
  version = "2.24.0";

  src = fetchFromGitHub {
    owner = "newren";
    repo = "git-filter-repo";
    rev = "v${version}";
    sha256 = "1i1y1x3hn6n0flpj1zhnzxjzwjyj6wig18fi3065vgkkf8a59ic5";
  };

  installPhase = ''
    mkdir -p $out/bin
    cp ./git-filter-repo $out/bin/
  '';
}