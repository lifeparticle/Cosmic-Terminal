
#!/bin/sh

brew cask uninstall iterm2

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

rm ~/.zshrc
brew uninstall zsh --force

uninstall_oh_my_zsh

brew uninstall powerlevel9k