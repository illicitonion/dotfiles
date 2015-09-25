#!/bin/bash -eu

self="$0"
if [[ "${self}" != /* ]]; then
  self="$(pwd)/${self}"
fi

case "$(uname)" in
  Linux)
    if ! $(grep "bashrc_custom" "${HOME}/.bashrc" >/dev/null 2>/dev/null); then
      echo ". ${HOME}/.bashrc_custom" >> "${HOME}/.bashrc"
    fi

    file="$(dirname ${self})/linux.sh"
    if ! $(grep "${file}" "${HOME}/.bashrc_custom" >/dev/null 2>/dev/null); then
      sed -i "1i\\
. ${file}\\
" "${HOME}/.bashrc_custom"
    fi
    ;;
  Darwin)
    file="$(dirname ${self})/darwin.sh"
    if ! $(grep "${file}" "${HOME}/.bash_profile" >/dev/null 2>/dev/null); then
      sed -i '' "1i\\
. ${file}\\
" "${HOME}/.bash_profile"
    fi
    ;;
  *)
    echo >&2 "Unrecognised uname"
    exit 1
esac
