# Cosmic-Terminal

This script will install [iTerm2](https://github.com/gnachman/iTerm2), [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and it will download [material-design-colors](https://github.com/MartinSeeler/iterm2-material-design), [powerlevel9k](https://github.com/bhilburn/powerlevel9k) and DroidSansMono Nerd Font from [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

![demo](https://user-images.githubusercontent.com/1612112/58381023-1e660780-7ffc-11e9-9022-da68dbd646f3.png)

## Prerequisite

Iterm2 works on Macs with macOS 10.12 or newer.

## 1. Install

Make install_cosmic_terminal.sh executable
```
chmod +x install_cosmic_terminal.sh
```

Run
```
./install_cosmic_terminal.sh
```

or (thanks to [Aidan](https://github.com/cyclotron3k))

```
curl -s https://raw.githubusercontent.com/lifeparticle/Cosmic-Terminal/master/install_cosmic_terminal.sh | sh
```

### 2. Set the theme ~/.zshrc
```
vim ~/.zshrc
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
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

### 5. extra config for ~/.zshrc (Optional)
```
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  dir
  custom_javascript
  vcs
  newline
  status
)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
```

### 6. Misc

https://unix.stackexchange.com/questions/71253/what-should-shouldnt-go-in-zshenv-zshrc-zlogin-zprofile-zlogout#:~:text=zprofile%20is%20meant%20as%20an,the%20setopt%20and%20unsetopt%20commands.

```
which zsh
```

[understanding-path](https://github.com/rbenv/rbenv#understanding-path)

```
# if you're using bash
$ echo 'export PATH="/usr/local/a/b/c:$PATH"' >> ~/.bashrc
$ source ~/.bashrc

# or if you're using zsh
$ echo 'export PATH="/usr/local/a/b/c:$PATH"' >> ~/.zshrc
$ source ~/.zshrc
```

Check which shell you're using.

```
echo $0
```

## Uninstall

1. run
```
./uninstall_cosmic_terminal.sh
```

or

```
curl -s https://raw.githubusercontent.com/lifeparticle/Cosmic-Terminal/master/uninstall_cosmic_treminal.sh | sh
```

## Tested OS
1. macOS Big Sur (Version 11.3)

## Bug Reports and Feature Requests
Please create an issue with as much information you can. Thank you.

## Author
Mahbub Zaman (https://mahbub.ninja)

## License
MIT License
