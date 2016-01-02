#!/bin/bash -eu

export PATH="${HOME}/bin:${PATH}"

export EDITOR=vim

set +u
if [[ "${SSH_AUTH_SOCK}" == "" ]]; then
  export SSH_AUTH_SOCK="${HOME}/.ssh-agent"
  if [[ ! -e "${SSH_AUTH_SOCK}" ]]; then
    ssh-agent -a "${SSH_AUTH_SOCK}"
  fi
fi
set -u

export HISTIGNORE=' *'

export PERL5LIB=$HOME/.perl5/lib/perl5
export PERL_MB_OPT=--install_base=$HOME/.perl5
export PERL_MM_OPT=INSTALL_BASE=$HOME/.perl5
