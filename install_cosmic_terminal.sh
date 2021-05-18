
#!/bin/sh

# $? is the result (exit code) of the last executed command.
# which -s No output, just return 0 if any of the executables are found, or 1 if none are found.
# /dev/null The null device is typically used for disposing of unwanted output streams of a process
# need to handle netowrk failures for curl requests


install() {

	which -s $1

	if [[ $? != 0 ]]
	then
		echo '-----------------------'
		echo 'installing '$1
		echo '-----------------------'
		true
	else
		echo '-----------------------'
		echo $1' already installed'
		echo '-----------------------'
		false
	fi

}

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
fi


# install "brew" && ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew cask install iterm2

curl -s https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors > $HOME/Downloads/material-design-colors.itermcolors

install "zsh" && brew install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" &

wait
echo "copy powerlevel9k"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

# fallback
chsh -s /bin/zsh







