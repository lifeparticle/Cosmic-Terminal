
#!/bin/sh

# $? is the result (exit code) of the last executed command.
# which -s No output, just return 0 if any of the executables are found, or 1 if none are found.
# /dev/null The null device is typically used for disposing of unwanted output streams of a process
# need to handle netowrk failures for curl requests

install() {
	which -s $1
	if [[ $? != 0 ]]
	then
		echo 'installing '$1
		true
	else
		echo $1' already installed'
		false
	fi
}

xcode-select -p 1> /dev/null

if [[ $? != 0 ]]
then
	echo 'installing xcode...'
	xcode-select --install
	read -p "Press enter after you have installed xcode"
else
	echo 'xcode already installed'
fi

install "brew" && /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
#eval "$(/opt/homebrew/bin/brew shellenv)"

mdfind "kMDItemCFBundleIdentifier == com.googlecode.iterm2" > /dev/null
if [[ $? != 0 ]]
then
	brew install --cask iterm2
else
	echo 'iterm2 already installed'
fi

echo 'downloading material-design-colors...'
curl -s https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors > $HOME/Downloads/material-design-colors.itermcolors

# comes with mac now??
# install "zsh" && brew install zsh

if [ ! -d $HOME/.oh-my-zsh ]
then
  echo 'installing oh-my-zsh ...'
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
	echo 'oh-my-zsh already installed'
fi

if [ ! -d $HOME/.oh-my-zsh/custom/themes/powerlevel10k ]
then
  echo 'installing powerlevel10k...'
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
else
	echo 'powerlevel10k already installed'
fi

cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

# chk this
chsh -s /bin/zsh


install "fig" && brew install fig
fig
