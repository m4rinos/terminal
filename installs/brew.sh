if ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (not found: ruby, curl and/or git)"
  return
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

if ! is-executable brew; then
  echo "Skipping: Homebrew packages (not found: brew)"
  return
fi

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
