#!/bin/bash
# Main idea is to be able to run this after cloning the repo on a Linux system and be up and running effortlessly.
#
# creating starting directories
export CONFIG_HOME="$HOME"/.config
mkdir -p "$CONFIG_HOME"/bash
mkdir -p "$CONFIG_HOME"/alacritty
mkdir -p "$CONFIG_HOME"/alacritty/themes
mkdir -p "$HOME"/scripts
# terminal alacritty-theme

git clone https://github.com/alacritty/alacritty-theme "$CONFIG_HOME"/alacritty/themes

# Sym links
ln -sf "$PWD/alacritty.toml" "$CONFIG_HOME"/alacritty/alacritty.toml
ln -sf "$PWD/.bash_profile" "$HOME"/.bash_profile
ln -sf "$PWD/.bashrc" "$HOME"/.bashrc
ln -sf "$PWD/.tmux.conf" "$HOME"/.tmux.conf
ln -sf "$PWD/nvim" "$CONFIG_HOME"/nvim
ln -sf "$PWD/scripts" "$HOME"/scripts

# Packages

# apt
sudo apt install ripgrep gh
sudo apt install gcc g++ unzip
sudo apt install fd starship
sudo apt install neovim go lazygit

# ubuntu specific notes
# create symbolic link to neovim from vim when not using neovim on
# Ubuntu systems, because I use the v alias everywhere.
# sudo ln -sf /usr/bin/vim /usr/bin/nvim
