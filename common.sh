#!/bin/bash -eu

function symlink() {
  rel_target="$1"
  link="$2"

  self="$0"
  abs_target="$(realpath $(dirname $0)/${rel_target})"

  if [[ -e "${link}" && "$(readlink ${link})" = "${abs_target}" ]]; then
    echo >&2 "Skipping symlink ${link} - already exists and correct"
  elif [[ -e "${link}" ]]; then
    echo >&2 "Symlink ${link} already exists and points to wrong location: want \"${abs_target}\" got \"$(readlink ${link})\""
    exit 1
  else
    mkdir -p "$(dirname "${link}")"
    ln -s "${abs_target}" "${link}"
  fi
}

