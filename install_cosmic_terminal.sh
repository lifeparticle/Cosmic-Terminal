
#!/bin/sh

# $? is the result (exit code) of the last executed command.
# which -s No output, just return 0 if any of the executables are found, or 1 if none are found.
# /dev/null The null device is typically used for disposing of unwanted output streams of a process

which -s brew

if [[ $? != 0 ]]
then
	echo '-----------------------'
	echo 'installing brew'
	echo '-----------------------'
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
else
	echo '-----------------------'
	echo 'brew already installed'
	echo '-----------------------'

	echo '-----------------------'
	echo 'trying to update brew'
	echo '-----------------------'
	brew update
fi

brew cask install iterm2

curl -s https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors > $HOME/Downloads/material-design-colors.itermcolors

which -s zsh

if [[ $? != 0 ]]
then
	echo '-----------------------'
	echo 'installing zsh'
	echo '-----------------------'
	brew install zsh
else
	echo '-----------------------'
	echo 'zsh already installed'
	echo '-----------------------'

	#echo '-----------------------'
	#echo 'trying to update zsh'
	#echo '-----------------------'
	# update zsh ?
fi

xcode-select -p 1> /dev/null

if [[ $? != 0 ]]
then
	echo '-----------------------'
	echo 'installing xcode'
	echo '-----------------------'
	xcode-select --install
	read -p "Press enter after you have installed xcode"
else
	echo '-----------------------'
	echo 'xcode already installed'
	echo '-----------------------'
	# update xcode ?
fi


sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k


# fallback
chsh -s /bin/zsh







