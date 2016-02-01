#!/bin/bash
set -e
rsync -a ~/.config/fish/completions fish/completions
rsync -a ~/.config/fish/functions fish/functions
