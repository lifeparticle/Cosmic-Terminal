
#!/bin/sh

which -s brew

if [[ $? != 0 ]]
then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
else
	brew update
fi


brew cask install iterm2


curl https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors > $HOME/Downloads/material-design-colors.itermcolors

which -s zsh

if [[ $? != 0 ]]
then
	brew install zsh
else
	brew upgrade zsh
fi


xcode-select --install

read -p "Press enter to continue"


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


brew tap sambadevi/powerlevel9k
brew install powerlevel9k


echo "source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc

# _____________________________________________________________________________
# $? is the result (exit code) of the last executed command.
# which -s No output, just return 0 if any of the executables are found, or 1 if none are found.
# /dev/null The null device is typically used for disposing of unwanted output streams of a process