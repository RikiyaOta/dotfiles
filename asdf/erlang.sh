#!/bin/sh

brew install autoconf
brew install wxmac

asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git

export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"

# To see the available versions, run this command:
# asdf list all erlang

asdf install erlang 23.2.6
