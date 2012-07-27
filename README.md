dotfiles - No Private!
========

My OSX config files

## Usage

1. Install these known prerequisites

  ```
  brew install reattach-to-user-namespace
  ```

1. Clone this repo and init submodules

  ```
  git clone --recursive https://AbleCoder@github.com/AbleCoder/dotfiles.git
  cd dotfiles
  ```

1. Create symbolic links

  ```
  ln -s `pwd`/tmux/.tmux.conf ~/.tmux.conf
  ln -s `pwd`/tmux/.tmux.clipboard ~/.tmux.clipboard
  ln -s `pwd`/tmux/battery ~/battery
  ln -s `pwd`/tmux/tmux-panes ~/tmux-panes
  ```

1. Get Drunk!!!
