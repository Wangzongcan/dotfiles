#!/bin/bash

asdf_path="$HOME/.asdf"

if [[ ! -d $asdf_path ]]; then
    git clone --depth 1 https://github.com/asdf-vm/asdf $asdf_path
    source $asdf_path/asdf.sh
fi

# ruby
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

# nodejs
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash $asdf_path/plugins/nodejs/bin/import-release-team-keyring

unset asdf_path
