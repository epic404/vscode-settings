# Install oh my zsh
# `brew install bash-completion`
# `brew install nvm``

alias ls="ls -GFh"
alias clean="git clean -fd"
alias prune="git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"

ZSH_THEME="jonathan"