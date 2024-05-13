#!/bin/bash

# Path to this file
repo_root="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

rsync -av --exclude=".git*" ${repo_root}/ ~

# Install plugins
nvim --headless "+Lazy! sync" +qa
