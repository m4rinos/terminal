# Install packages
apps=(
  dropbox
  google-chrome
  google-drive
  macdown
  spotify
  sublime-text
  vlc
  little-snitch
  skype
  franz
  sqlitestudio
  transmission
  flux
  onyx
  google-chrome
  1password
  scrivener
  disk-inventory-x
  google-photos-backup
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

