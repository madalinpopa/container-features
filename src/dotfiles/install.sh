#!/bin/sh
set -e

echo "Hello World!"

if [ ! -d /home/vscode/.dotfiles ]; then
    git clone https://github.com/madalinpopa/dotfiles.git /home/vscode/.dotfiles
    /home/vscode/.dotfiles/install
fi

exit 0
