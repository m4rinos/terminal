#!/usr/bin/env bash

# create symlinks
ln -sfv "~/terminal/dotfiles/.bash_profile" ~
ln -sfv "~/terminal/dotfiles/.inputrc" ~
ln -sfv "~/terminal/dotfiles/.gitconfig" ~
ln -sfv "~/terminal/dotfiles/.gitignore_global" ~

# run install scripts
. "~/terminal/install/brew.sh"
. "~/terminal/install/npm.sh"
. "~/terminal/install/pip.sh"
