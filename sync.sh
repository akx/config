#!/bin/bash
set -e
rsync -a ~/.config/fish .
cp -a ~/.gitignore ./global.gitignore
cp -a ~/.gitconfig ./global.gitconfig
