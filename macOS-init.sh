#!/bin/bash
# check for homebrew, then install
if [[ ! -x "/usr/local/bin/brew" ]]; then
    echo "Installing homebrew..."
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew installed...skipping!"
fi

# install default apps
while read app; do
    brew install "$app"
done < "$HOME/.dotfiles/brew_leaves.txt"
