{ buildPythonPackage, fetchPypi }:

buildPythonPackage rec {
  pname = "backoff";
  version = "1.10.0";

  src = fetchPypi {
    inherit pname version;
    sha256 = "190rdpfhpjvb6bjh99fhdkgfsfkjwky7nz7b0nn5ah67z8hs1yxq";
  };
}
