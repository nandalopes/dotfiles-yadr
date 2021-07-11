set -o vi
export EDITOR=vim
export VISUAL=vim

# Don't try to glob with zsh so you can do
# stuff like ga *foo* and correctly have
# git add the right stuff
alias git='noglob git'

# Override rm -i alias which makes rm prompt for every action
alias rm='nocorrect rm'

# Use zmv, which is amazing
autoload -U zmv
alias zmv="noglob zmv -W"

