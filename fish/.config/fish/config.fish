# global env
set LC_ALL en_US.UTF-8
set LANG en_US.UTF-8
set -x TERMINFO /usr/share/terminfo
set -x SHELL (which fish)
set -x EDITOR "emacsclient -tc"
set -U fish $HOME/.config/fish
set -x fish_greeting ''

# key bindings
set -g fish_key_bindings fish_vi_key_bindings

# aliases
each 'source $_1' (ls $fish/aliases/*)

# paths
set PATH $PATH $HOME/.bin/
set PATH $PATH /Applications/Postgres.app/Contents/Versions/latest/bin/

# homebrew
if test -e /usr/local/bin/brew
  set HOMEBREW_NO_ANALYTICS 1
  set HOMEBREW_CASK_OPTS "--appdir=~/Applications --caskroom=/usr/local/Caskroom"
end
