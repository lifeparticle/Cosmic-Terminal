# Cosmic-Terminal

This script will install [iTerm2](https://github.com/gnachman/iTerm2), [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh), [Fig](https://fig.io/) and it will download [material-design-colors](https://github.com/MartinSeeler/iterm2-material-design), [powerlevel10k](https://github.com/romkatv/powerlevel10k) and DroidSansMono Nerd Font from [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

![demo](https://user-images.githubusercontent.com/1612112/58381023-1e660780-7ffc-11e9-9022-da68dbd646f3.png)

## Prerequisite

Iterm2 works on Macs with macOS 10.12 or newer.

## Install

### 1. Make `install_cosmic_terminal.sh` executable

```
chmod +x install_cosmic_terminal.sh
```

Run

```shell
./install_cosmic_terminal.sh
```

or (thanks to [Aidan](https://github.com/cyclotron3k))

```shell
curl -s https://raw.githubusercontent.com/lifeparticle/Cosmic-Terminal/master/install_cosmic_terminal.sh | sh
```

### 2. Set the theme in `~/.zshrc`

```shell
vim ~/.zshrc
ZSH_THEME="powerlevel10k/powerlevel10k"
```

### 3. Set the Font

3.1. iTerm2 > Preferences > Profiles > Text Tab

3.2. Click Change font

3.3. Select DroidSansMono Nerd Font

For more fonts
https://github.com/ryanoasis/nerd-fonts

### 4. Set the color

4.1 iTerm2 > Preferences > Profiles > Colors Tab

4.2 Click Color Presets...

4.3 Click Import...

4.4 Choose material-design-colors.itermcolors file from Downloads folder

4.5 Select the material-design-colors from the dropdown

### 5. Set Aliases in `~/.zshrc`

```shell
function gitall() {
    git add .
    if [ "$1" != "" ]
    then
        git commit -m "$1"
    else
        git commit -m update # default commit message is `update`
    fi # closing statement of if-else block
    git push origin HEAD
}
```

[Source](https://stackoverflow.com/questions/34340575/zsh-alias-with-parameter)

### 6. Status bar

6.1. iTerm2 > Preferences > Profiles > Session tab -> Status bar enabled [check]
6.1.1 Configure status bar
6.1.2 Advanced - Background color -> Use the color picker and choose the backgroung color of the terminal
6.2. iTerm2 > Preferences > Appearance > Status bar locatio [Bottom]

### 7. Add Plugins in `~/.zshrc`

```shell
plugins=(
    git
    zsh-autosuggestions
)
```

## Uninstall

1. run

```shell
./uninstall_cosmic_terminal.sh
```

or

```shell
curl -s https://raw.githubusercontent.com/lifeparticle/Cosmic-Terminal/master/uninstall_cosmic_treminal.sh | sh
```

## Troubleshooting

### Tested OS

- macOS Big Sur (Version 11.3)

### List all available shells in macOS X:

```shell
cat /etc/shells
```

### To see which shell you’re running:

```shell
echo $0
```

### To change to bash shell:

```shell
chsh -s /bin/bash
```

### To change to zsh shell:

```shell
chsh -s /bin/zsh
```

### [Understanding path](https://github.com/rbenv/rbenv#understanding-path)

```shell
# if you're using bash
$ echo 'export PATH="/usr/local/a/b/c:$PATH"' >> ~/.bashrc
$ source ~/.bashrc

# or if you're using zsh
$ echo 'export PATH="/usr/local/a/b/c:$PATH"' >> ~/.zshrc
$ source ~/.zshrc
```

### [What should/shouldn't go in .zshenv, .zshrc, .zlogin, .zprofile, .zlogout?](https://unix.stackexchange.com/questions/71253/what-should-shouldnt-go-in-zshenv-zshrc-zlogin-zprofile-zlogout#:~:text=zprofile%20is%20meant%20as%20an,the%20setopt%20and%20unsetopt%20commands)

## Bug Reports and Feature Requests

Please create an issue with as much information you can. Thank you.

## Author

Mahbub Zaman (https://mahbub.ninja)

## License

MIT License
