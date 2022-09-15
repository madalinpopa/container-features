#!/usr/bin/env bash
set -e

echo "Installing dotfiles"
echo "This runs as $USER"

clean_existent_dotfiles() {
    if [ -f ~/.bashrc ]; then
        rm ~/.bashrc
    fi
    if [ -f ~/.profile ]; then
        rm ~/.profile
    fi
    if [ -f ~/.gitconfig ]; then
        rm ~/.gitconfig
    fi
}
echo "Cleaning existent files"
clean_existent_dotfiles

if [ ! -d ~/.dotfiles ]; then
    git clone https://github.com/madalinpopa/dotfiles.git ~/.dotfiles
    ~/.dotfiles/install
else
    ~/.dotfiles/install
fi

exit 0
