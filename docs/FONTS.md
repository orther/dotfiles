Fonts
=====

I'm currently using the font `Source Code Pro - Medium` from the Powerline packed fonts repo.

## Install Fonts

1. Clone powerline/fonts repo and copy them to ~/Library/Fonts w/ the `install.sh` script:

  ```
  git clone git@github.com:powerline/fonts.git powerline-fonts
  cd powerline-fonts
  ./install.sh
  ```

1. You can delete the `powerline-fonts` if you like:

  ```
  cd ..
  rm -r powerline-fonts
  ```

# Configure iTerm

1. Open Preferences (`cmd+,`)

1. Select the Profile tab.

1. Select the profile you want to update (usually the default one with a start)

1. Select the **Text** tab for that profile and update the `Regular` and `Non-ASCII` fonts to:

 - Family: `Source Code Pro`
 - Typeface: `Medium`
 - Size: 10

1. Check **Anti-aliased** for both `Regular` and `Non-ASCII`
