#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

alias ll='ls -lh'

# tmux
export TMUX_TMPDIR=/tmp

# psql
export PATH="/usr/local/opt/libpq/bin:$PATH"

# MacVim-KaoriYa
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
