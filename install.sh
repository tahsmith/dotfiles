#!/bin/bash

# Path to this file
repo_root="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

function git-home {
    # Forwars all args to git
    git --work-tree ${HOME} --git-dir ${repo_root}/.git $@
}

git-home checkout .

# Install plugins
nvim +PlugInstall +PlugUpdate +qall