# Cosmic-Terminal

This script will install [iTerm2](https://github.com/gnachman/iTerm2), [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) and it will download [material-design-colors](https://github.com/MartinSeeler/iterm2-material-design), [powerlevel9k](https://github.com/bhilburn/powerlevel9k) and DroidSansMono Nerd Font from [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)

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
ZSH_THEME="powerlevel9k/powerlevel9k"
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
1. macOS Sierra (version 10.12.6)

