{ wally-cli, fetchFromGitHub }:

wally-cli.overrideAttrs (_:
  rec {
    version = "1.1.3-osx";

    src = fetchFromGitHub {
        owner = "zsa";
        repo = "wally";
        rev = "${version}";
        sha256 = "17y04p5r699byzg41zbslzxynlp6fhs71az6bfk4rw6908kapj19";
    };
  }
)
