#!/bin/sh

brew install coreutils gpg

asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git

bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

# To see the available versions, run this command:
# asdf list all nodejs

asdf install nodejs 14.16.0
