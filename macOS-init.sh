#!/bin/zsh

# check for homebrew, then install
if [ ! -e "$(which brew)" ]; then
    printf "Homebrew not found, installing...\n"
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    printf "Homebrew found, skipping install!\n"
fi

# install via brew
if [ -e "$(which brew)" ]; then
    if [ -f "./.Brewfile" ]; then
        brew bundle install --file=./.Brewfile
    else
        printf "Brewfile not found, exiting...\n"
        exit 1
    fi
else
    printf "Brew command not found, exiting...\n"
    exit 1
fi
