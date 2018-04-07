# if [[ ! ":$PATH:" == *":$HOME/bin:"* ]]; then
#     export PATH="$HOME/bin:$PATH"
# fi

# if [[ ! ":$PATH:" == *":/usr/local/sbin:"* ]]; then
#     export PATH="$PATH:/usr/local/sbin"
# fi

# # TODO: move this into it's own plugin?
# export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"

# # setup vim to be default editor
# export VISUAL=vim
# export EDITOR="$VISUAL"

# brew
# export PATH="/usr/local/sbin:$PATH"
export HOMEBREW_GITHUB_API_TOKEN="$(gopass api/orther@github.com/homebrew)" # orther GitHub OAuth HOMEBREW

# TODO: confirm we need these and if not remove, if we do then add them to fish?
# GNU Command Line Tools on Mac OS X
# https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
export MANPATH="$(brew --prefix coreutils)/libexec/gnuman:$MANPATH"
export MANPATH="$(brew --prefix findutils)/share/man:$MANPATH"
export MANPATH="$(brew --prefix gnu-tar)/libexec/gnuman:$MANPATH"

# # TODO: remove this and use docker instead?
# export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

## yarn global bin
#export PATH="$PATH:`yarn global bin`"

# TODO: can we organize this better and use less paths?
export PATH=$PATH:/usr/local/bin

# # TODO: use some elixir version manager instead?
# export PATH=$PATH:~/elixir-v1.3.0-rc.1-Precompiled/bin

# Evaluate system PATH
if [ -x /usr/libexec/path_helper ]; then
    eval `/usr/libexec/path_helper -s`
fi

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/brandon/dev/soworg-serverless/node_modules/tabtab/.completions/serverless.bash ] && . /Users/brandon/dev/soworg-serverless/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/brandon/dev/soworg-serverless/node_modules/tabtab/.completions/sls.bash ] && . /Users/brandon/dev/soworg-serverless/node_modules/tabtab/.completions/sls.bash

# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[ -f /Users/brandon/.config/yarn/global/node_modules/tabtab/.completions/yarn.bash ] && . /Users/brandon/.config/yarn/global/node_modules/tabtab/.completions/yarn.bash

export PATH=~/.bin:$PATH:
