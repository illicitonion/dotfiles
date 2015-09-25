#!/bin/bash -eu

. "$(dirname "${BASH_SOURCE[0]}")/common.sh"

bind '"\e[5C": forward-word'
bind '"\e[5D": backward-word'
bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'
