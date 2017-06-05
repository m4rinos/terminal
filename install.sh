#!/usr/bin/env bash

# create symlinks
ln -sv "/Users/$USER/terminal/dotfiles/.bash_profile" ~
ln -sv "/Users/$USER/terminal/dotfiles/.inputrc" ~
ln -sv "/Users/$USER/terminal/dotfiles/.vimrc" ~
ln -sv "/Users/$USER/terminal/dotfiles/.gitconfig" ~
ln -sv "/Users/$USER/terminal/dotfiles/.gitignore" ~
#rm -rf "/Users/mvh/Library/Application Support/Sublime Text 3/Packages/User" 
#ln -sv "/Users/$USER/terminal/install/sublime-user" "/Users/mvh/Library/Application Support/Sublime Text 3/Packages/User"

# run install scripts
#~/terminal/install/brew.sh
#~/terminal/install/brew-cask.sh
