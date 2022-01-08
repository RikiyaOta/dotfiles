#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Default Editor
export EDITOR="vim"

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
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# asdf-vm
. $(brew --prefix asdf)/libexec/asdf.sh

# pyenv
eval "$(pyenv init -)"

# rbenv
eval "$(rbenv init -)"

# GNU commands
alias cat='gcat'
alias sed='gsed'
alias grep='ggrep'
alias awk='gawk'
alias sort='gsort'
alias xargs='gxargs'
