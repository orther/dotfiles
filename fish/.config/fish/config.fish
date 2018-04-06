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
set PATH $HOME/.bin $PATH
# set PATH $PATH /Applications/Emacs.app/Contents/MacOS/bin

# # nvm set node version
# nvm use default

# homebrew
if test -e /usr/local/bin/brew
  set HOMEBREW_NO_ANALYTICS 1
  set HOMEBREW_CASK_OPTS "--appdir=~/Applications --caskroom=/usr/local/Caskroom"
end

# tabtab source for undefined package
# uninstall by removing these lines or running `tabtab uninstall undefined`
[ -f /Users/brandon/.config/yarn/global/node_modules/tabtab/.completions/undefined.fish ]; and . /Users/brandon/.config/yarn/global/node_modules/tabtab/.completions/undefined.fish
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/brandon/dev/soworg-serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/brandon/dev/soworg-serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/brandon/dev/soworg-serverless/node_modules/tabtab/.completions/sls.fish ]; and . /Users/brandon/dev/soworg-serverless/node_modules/tabtab/.completions/sls.fish
# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[ -f /Users/brandon/.config/yarn/global/node_modules/tabtab/.completions/yarn.fish ]; and . /Users/brandon/.config/yarn/global/node_modules/tabtab/.completions/yarn.fish
nvm use default
