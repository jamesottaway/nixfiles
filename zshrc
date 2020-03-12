compdef g=git
g() {
    git "${@:-status}"
}