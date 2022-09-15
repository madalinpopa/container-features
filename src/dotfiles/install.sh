#!/usr/bin/env bash
set -e

echo "Installing dotfiles"
echo "This runs as $USER"

VSCODE_USER_HOME="/home/vscode"

clean_existent_dotfiles() {
    if [ -f $VSCODE_USER_HOME/.bashrc ]; then
        rm $VSCODE_USER_HOME/.bashrc
    fi
    if [ -f$VSCODE_USER_HOME/.profile ]; then
        rm $VSCODE_USER_HOME/.profile
    fi
    if [ -f$VSCODE_USER_HOME/.gitconfig ]; then
        rm $VSCODE_USER_HOME/.gitconfig
    fi
}
echo "Cleaning existent files"
clean_existent_dotfiles

if [ ! -d $VSCODE_USER_HOME/.dotfiles ]; then
    git clone https://github.com/madalinpopa/dotfiles.git $VSCODE_USER_HOME/.dotfiles
    $VSCODE_USER_HOME/.dotfiles/install
else
    $VSCODE_USER_HOME/.dotfiles/install
fi

exit 0
