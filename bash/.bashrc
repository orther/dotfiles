#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
export THEME_SHOW_CLOCK=true
export BASH_IT_THEME='powerline'

# Your place for hosting Git repos. I use this for private repos.
# export GIT_HOSTING='git@git.domain.com'
export GIT_HOSTING='git@github.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
# export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
# export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# TODO: move this into it's own plugin?
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"

#export PATH=$PATH:/usr/local/packer

# setup atlas token
# export ATLAS_TOKEN="BAD-OLD-NO-WORK--ErhBAD8Qcvox7p63SoJanLiNWsPoHsUWsPTtgQcbxvozVLdMD7uzOLD-7_T9o7SjV9yHSHL5Q"

# # setup vim to be default editor
# export VISUAL=vim
# export EDITOR="$VISUAL"

# brew
# export PATH="/usr/local/sbin:$PATH"
export HOMEBREW_GITHUB_API_TOKEN="$(pass api/orther@github.com/homebrew)" # orther GitHub OAuth HOMEBREW

# Load Bash It
source $BASH_IT/bash_it.sh

## setup docker
## eval "$(docker-machine env default)"
#
## TODO: remove this if the eval abover works. This is from an old boot2docker install.
## # setup boot2docker
## export DOCKER_HOST=tcp://192.168.59.105:2376
## export DOCKER_CERT_PATH=/Users/brandon/.boot2docker/certs/boot2docker-vm
## export DOCKER_TLS_VERIFY=1
#

# TODO: remove this or set it up to work with both bash and fish
# export NVM_DIR="/Users/brandon/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# TODO: confirm we need these and if not remove, if we do then add them to fish?
# GNU Command Line Tools on Mac OS X
# https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"
export MANPATH="$(brew --prefix findutils)/share/man:$MANPATH"
export MANPATH="$(brew --prefix gnu-tar)/libexec/gnuman:$MANPATH"

# TODO: remove this and use docker instead?
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

# TODO: can we organize this better and use less paths?
export PATH=$PATH:~/bin
export PATH=$PATH:/usr/local/bin

# TODO: use some elixir version manager instead?
export PATH=$PATH:~/elixir-v1.3.0-rc.1-Precompiled/bin

# Evaluate system PATH
if [ -x /usr/libexec/path_helper ]; then
    eval `/usr/libexec/path_helper -s`
fi

# export ANDROID_HOME=/usr/loal/opt/android-sdk

# export PATH="$HOME/.yarn/bin:$PATH"

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash

# export PROJECT_PATHS=~/emacs:~/dev/omt
