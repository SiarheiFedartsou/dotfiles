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