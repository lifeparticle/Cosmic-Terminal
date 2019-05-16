
#!/bin/sh

confirm() {
	read -p "$1 Are you sure [y/N]? " response

	if [[ "$response" =~ ^[Yy]$ ]]
	then
		true
	else
		false
	fi
}


confirm "Are you sure you want to uninstall oh-my-zsh?" && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/uninstall.sh)"

confirm "Are you sure you want to uninstall itemr2?" && brew cask uninstall iterm2

confirm "Are you sure you want to uninstall brew?" && ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/uninstall)"


chsh -s /bin/bash


