{
  fileSystems.movies = {
    device = "//diskstation/Movies";
    mountPoint = "/mnt/diskstation/movies";
    fsType = "cifs";
    options = [ "credentials=/root/.credentials" ];
  };

  fileSystems.tv = {
    device = "//diskstation/TV";
    mountPoint = "/mnt/diskstation/tv";
    fsType = "cifs";
    options = [ "credentials=/root/.credentials" ];
  };

}
