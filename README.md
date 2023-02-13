# Karasu's dotfiles for MacOS

## Usage

install oh-my-zsh
``` bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

install plugins
``` bash
# fast-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting ~/.oh-my-zsh/plugins/fast-syntax-highlighting

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

# zsh-completions
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/plugins/zsh-completions
```

install prompt
``` bash
brew install starship
```

install exa
``` bash
brew install exa
```

link dotfiles
``` bash
source bootstrap.sh
```
