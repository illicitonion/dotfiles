#!/bin/bash -eu

self="$0"
if [[ "${self}" != /* ]]; then
  self="$(pwd)/${self}"
fi

case "$(uname)" in
  Linux)
    if ! $(grep "bashrc_custom" "${HOME}/.bashrc" >/dev/null 2>/dev/null); then
      echo >> "${HOME}/.bashrc"
      echo ". ${HOME}/.bashrc_custom" >> "${HOME}/.bashrc"
    fi

    if [[ ! -f "${HOME}/.bashrc_custom" ]]; then
      echo "" > "${HOME}/.bashrc_custom"
    fi
    file="$(dirname ${self})/linux.sh"
    file="${file//\/.\//\/}"
    if ! $(grep "${file}" "${HOME}/.bashrc_custom" >/dev/null 2>/dev/null); then
      sed -i "1i\\
. ${file}\\
" "${HOME}/.bashrc_custom"
    fi
    echo "${HOME}/.bashrc"
    ;;
  Darwin)
    file="$(dirname ${self})/darwin.sh"
    file="${file//\/.\//\/}"
    if [[ ! -e "${HOME}/.bash_profile" ]]; then
      echo > "${HOME}/.bash_profile"
    fi
    if ! $(grep "${file}" "${HOME}/.bash_profile" >/dev/null 2>/dev/null); then
      sed -i '' "1i\\
. ${file}\\
" "${HOME}/.bash_profile"
    fi
    echo "${HOME}/.bash_profile"
    ;;
  *)
    echo >&2 "Unrecognised uname"
    exit 1
esac
