#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade
brew install homebrew/php/php71 
brew install -s php71-mcrypt

# Install packages
apps=(
  git
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
