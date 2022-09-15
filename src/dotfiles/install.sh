#!/bin/sh
set -e

echo "Hello World!"

git clone https://github.com/madalinpopa/dotfiles.git /home/vscode
/home/vscode/dotfiles/install
