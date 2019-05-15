
#!/bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/uninstall.sh)"

brew cask uninstall iterm2

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"

chsh -s /bin/bash