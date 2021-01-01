{ buildPythonPackage, fetchPypi, aiohttp, async-timeout, backoff }:

buildPythonPackage rec {
  pname = "aiogithubapi";
  version = "1.0.4";

  src = fetchPypi {
    inherit pname version;
    sha256 = "1llcbwvks6an5wwiyrh34qri7vihi2b6xqz244nqhqb8jawk7449";
  };

  propagatedBuildInputs = [
    async-timeout
    aiohttp
    backoff
  ];
}
