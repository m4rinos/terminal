ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

# Install packages
apps=(
  git
  php71
  php71-mcryp
  composer
  openssl
  node
  mhash
  mcrypt
  lynx
  libxml2
  nginx
  sqlite
  redis
  grep --with-default-names
  tree
  wget
  aircrack-ng
  ethereum
  curl
  vim
  bash-completion
)

brew install "${apps[@]}"
brew doctor
brew cleanup
