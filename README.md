dotfiles - No Private!
========

My OSX config files

## Usage

1. Install these known prerequisites

  ```
  brew install macvim
  brew install tmux reattach-to-user-namespace
  ```

1. Clone this repo (and any other dependant repos)

  ```
  git clone --recursive https://AbleCoder@github.com/AbleCoder/dotfiles.git
  cd dotfiles
  git clone https://github.com/gmarik/vundle.git vim/.vim/bundle/vundle
  ```

1. Create symbolic links

  ```
  ln -s `pwd`/tmux/.tmux.conf ~/.tmux.conf
  ln -s `pwd`/tmux/.tmux.clipboard ~/.tmux.clipboard
  ln -s `pwd`/tmux/battery ~/battery
  ln -s `pwd`/tmux/tmux-panes ~/tmux-panes
  ln -s `pwd`/vim/.vimrc ~/.vimrc
  ln -s `pwd`/vim/.vim ~/.vim
  ```

1. Do one time Vim setup

  ```
  vim +BundleInstall +qall
  ```

1. Get Drunk!!!
