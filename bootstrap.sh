#!/bin/sh
set -eou pipefail

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# brew
brew bundle

# gitconfig
GITCONFIG="$DIR/.gitconfig"
cat >>$HOME/.gitconfig <<EOL
[include]
    path = $GITCONFIG
EOL

# aliases
ALIASES="$DIR/aliases.sh"
cat >>$HOME/.zshrc <<EOL

source "$ALIASES"
EOL

# fzf
$(brew --prefix)/opt/fzf/install


# Fira Code fonts
curl -OL https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip 
unzip Fira_Code_v6.2.zip -d fonts
cp -r fonts/ttf/  ~/Library/Fonts
rm -rf Fira_Code_v6.2.zip 
rm -rf fonts
