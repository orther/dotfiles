#!/usr/bin/env bash

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
