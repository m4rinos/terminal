#!/usr/bin/env bash

# create symlinks
ln -sv "/Users/$USER/terminal/dotfiles/.bash_profile" ~
ln -sv "/Users/$USER/terminal/dotfiles/.inputrc" ~
ln -sv "/Users/$USER/terminal/dotfiles/.gitconfig" ~
ln -sv "/Users/$USER/terminal/dotfiles/.gitignore" ~

# run install scripts
#~/terminal/install/brew.sh
#~/terminal/install/brew-cask.sh
