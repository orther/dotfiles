function enable-dotfile-aliases() {
  about 'enable bash-it aliases defined in dotfiles (used for customizing bash-it)'
  # group 'osx'

  # if [ ! $(uname) = "Darwin" ]
  # then
  #   echo "This function only works with Mac OS X"
  #   return 1
  # fi

  bash-it enable alias docker
  bash-it enable alias emacs
  bash-it enable alias fuck
  bash-it enable alias general
  bash-it enable alias git
  bash-it enable alias homebrew-cask
  bash-it enable alias homebrew
  bash-it enable alias osx
  bash-it enable alias phoenix
  bash-it enable alias vim
}

function enable-dotfile-plugins() {
  about 'enable bash-it plugins defined in dotfiles (used for customizing bash-it)'
  # group 'osx'

  # if [ ! $(uname) = "Darwin" ]
  # then
  #   echo "This function only works with Mac OS X"
  #   return 1
  # fi

  bash-it enable plugin nvm
  bash-it enable plugin autojump
  bash-it enable plugin aws
  bash-it enable plugin base
  bash-it enable plugin battery
  bash-it enable plugin docker
  bash-it enable plugin edit-mode-emacs
  bash-it enable plugin fasd
  bash-it enable plugin git
  bash-it enable plugin history
  bash-it enable plugin hub
  bash-it enable plugin osx
  bash-it enable plugin projects
  bash-it enable plugin ssh
  bash-it enable plugin alias-completion
}

function enable-dotfile-completions() {
  about 'enable bash-it completions defined in dotfiles (used for customizing bash-it)'
  # group 'osx'

  # if [ ! $(uname) = "Darwin" ]
  # then
  #   echo "This function only works with Mac OS X"
  #   return 1
  # fi

  bash-it enable completion awscli
  bash-it enable completion bash-it
  bash-it enable completion brew
  bash-it enable completion defaults
  bash-it enable completion docker
  bash-it enable completion git
  bash-it enable completion hub
  bash-it enable completion makefile
  bash-it enable completion npm
  bash-it enable completion nvm
  bash-it enable completion projects
  bash-it enable completion ssh
  bash-it enable completion system
}

function setup-bash-it-custom() {
  enable-dotfile-aliases;
  enable-dotfile-plugins;
  enable-dotfile-completions;
}
