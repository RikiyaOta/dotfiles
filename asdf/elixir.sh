#!/bin/sh

brew install unzip

asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git

# To see the available versions, run this command:
# asdf list all elixir

asdf install elixir 1.11.3
