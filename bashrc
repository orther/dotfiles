#!/usr/bin/env bash

# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='zork'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/xvzf/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# TODO: move this into it's own plugin?
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

export PATH=$PATH:/usr/local/packer

# setup atlas token
export ATLAS_TOKEN="Erh8Qcvox7p63SoJanLiNWsPoHsUWsPTtgQcbxvozVLdMD7uz-7_T9o7SjV9yHSHL5Q"

# setup vim to be default editor
export VISUAL=vim
export EDITOR="$VISUAL"

# Load Bash It
source $BASH_IT/bash_it.sh

# brew
export PATH="/usr/local/sbin:$PATH"

# nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# setup docker
# eval "$(docker-machine env default)"

# TODO: remove this if the eval abover works. This is from an old boot2docker install.
# # setup boot2docker
# export DOCKER_HOST=tcp://192.168.59.105:2376
# export DOCKER_CERT_PATH=/Users/brandon/.boot2docker/certs/boot2docker-vm
# export DOCKER_TLS_VERIFY=1

if [[ $DESK_ENV ]]; then
    . $DESK_ENV
fi
