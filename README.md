dotfiles (2nd gen)
==================

So many wasted hours to get these just right... almost.

## Usage

1. Clone this repo (and any other dependant repos)

  ```
  git clone --recursive https://orther@github.com/orther/dotfiles.git
  ```

1. Create symbolic links

  ```
  ln -s `pwd`/bashrc ~/.bashrc
  ln -s `pwd`/bash_profile ~/.bash_profile
  ln -s `pwd`/desk ~/.desk
  ln -s `pwd`/.spacemacs ~/.spacemacs
  ln -s `pwd`/spacemacs/ ~/.spacemacs.d
  ln -s `pwd`/spacemacs/local/spaceline-all-the-icons.el ~/.spaceline-all-the-icons.el
  ln -s `pwd`/lein/profiles.clj ~/.lein/profiles.clj
  ln -s `pwd`/maid ~/.maid
  ```

  ```
  ln -s `pwd`/spacemacs/local/spaceline-all-the-icons.el .spaceline-all-the-icons.el
  ```

1. Start working those money makers (your fingers)!!!
