#!/bin/bash -eu

. "$(dirname $0)/../common.sh"

symlink abspath ~/bin/abspath
symlink parent_containing_file ~/bin/parent_containing_file
symlink scppath ~/bin/scppath
symlink with_isolated_path ~/bin/with_isolated_path
