cask_args appdir: '/Applications'

tap 'Homebrew/bundle'
tap 'homebrew/services'

#### os
brew 'coreutils'
brew 'less'
brew 'mas'
brew 'stow'
cask 'xquartz'

#### ui
tap 'crisidev/chunkwm'
# chunkwm'
brew 'chunkwm', restart_service: :changed
cask 'ubersicht'

#### shell
brew 'fish'
brew 'fzf'
brew 'm-cli'
brew 'reattach-to-user-namespace'
brew 'rlwrap'
brew 'tldr'
# TODO replace current iterm2 install w/ this
# cask 'iterm2'

# keeping secrets
tap 'justwatchcom/gopass'
brew 'justwatchcom/gopass/gopass'
brew 'pass'
cask 'qtpass'
cask 'keybase'

#### files
brew 'exa'
brew 'fasd'
brew 'findutils', args: ['with-default-names']
brew 'grep', args: ['with-default-names']
brew 'ranger'
brew 'ripgrep'
brew 'the_silver_searcher'

#### interwebs
brew 'aria2'
brew 'htop-osx'
brew 'httpie'
brew 'jq'
brew 'mobile-shell'
brew 'net-snmp'
brew 'offlineimap'
cask 'qutebrowser'

#### editor
tap 'd12frosted/emacs-plus'
brew 'aspell'
brew 'd12frosted/emacs-plus/emacs-plus', args: ['without-spacemacs-icon']
brew 'editorconfig'
brew 'markdown'
brew 'neovim'
brew 'pandoc'

#### keyboard
cask 'karabiner-elements'
tap 'koekeishiya/formulae'
brew 'koekeishiya/formulae/khd'
brew 'khd', restart_service: :changed


#### vcs
brew 'gist'
brew 'git'
brew 'hub'
brew 'mercurial'
brew 'tig'
cask 'gitup'
cask 'sourcetree'

#### deploy
brew 'awscli'
cask 'ngrok'
mas 'CCMenu', id: 603117688

#### vm
cask 'virtualbox'

#### languages
brew 'elixir'
brew 'elm'
brew 'libsass'
brew 'libyaml'
brew 'node'
brew 'pyenv'
brew 'pyenv-virtualenv'
brew 'python'
brew 'ruby'
brew 'sassc'
cask 'java'

#### misc dev
brew 'asciinema'
brew 'exercism'
brew 's3cmd'
brew 'trash'
brew 'wakatime-cli'
brew 'watchman'
brew 'yarn'
cask 'reactotron'
cask 'sauce-connect'
cask 'wkhtmltopdf'

#### media
cask 'google-play-music-desktop-player'
cask 'vlc'

# fonts
tap 'caskroom/fonts'
cask 'font-dejavu-sans'
cask 'font-fira-mono'
cask 'font-fira-sans'
cask 'font-iosevka'

#### communication
mas 'Slack', id: 803453959

#### design
mas 'Gravit Designer', id: 1207744923
mas 'Pixelmator', id: 407963104
