#!/bin/bash -eu

if [[ "$(uname)" == "Darwin" ]]; then
  if ! type brew >/dev/null 2>/dev/null; then
    echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  fi

  # Install from `Brewfile` generated by `brew bundle dump`
  brew bundle
fi
