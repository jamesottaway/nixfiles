compdef g=git
g() {
    git "${@:-status}"
}
. ~/.nix-profile/etc/profile.d/nix.sh