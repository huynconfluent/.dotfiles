#!/bin/zsh
# check for homebrew, then install
if [[ ! -x "/usr/local/bin/brew" ]]; then
    echo "Installing homebrew..."
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew installed...skipping!"
fi

# ensure repos are installed
if [ -e "$(which brew)" ]; then
    brew tap chipmk/tap
    brew tap nikitaboko/tap
fi

# install default apps
while read app; do
    brew install "$app"
done < "$HOME/.dotfiles/brew_leaves.txt"
