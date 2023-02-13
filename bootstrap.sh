#!/bin/bash

cwd=$(pwd)

# zsh
ln -sf "$cwd/zsh/.zshrc" ~/.zshrc

# zsh theme - starship
ln -sf "$cwd/starship/starship.toml" ~/.config/starship.toml

# git
ln -sf "$cwd/git/.gitconfig" ~/.gitconfig
ln -sf "$cwd/git/.gitignore" ~/.gitignore
ln -sf "$cwd/git/.gitattributes" ~/.gitattributes
