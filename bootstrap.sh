# /bin/bash

set -euo pipefail

# Install homebrew
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing homebrew ..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Clone dotfiles repository
git clone --bare git@github.com:debakkerb/dotfiles.git

function config {
  /usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
}

mkdir -p .config-backup

config checkout

if [ $? = 0 ]; then
  echo "Checked out config."
else
  echo "Backing up pre-existing dot files."
  config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi

config checkout

config config status.showUntrackedFiles  no

# Install brew packages
brew install starship
brew install go
brew install gopls

## Formatters
brew install prettierd
brew install stylua
