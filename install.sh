#!/bin/bash

# Path to this file
repo_root="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

pushd $repo_root
# rsync -av --exclude=".git*" ./ ~
cp -r ./ ~
popd

# Install plugins
nvim --headless "+Lazy! sync" +qa
nvim --headless +"MasonInstallAll" +qa
