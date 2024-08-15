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
ln -sf "$PWD/starship.toml" "$CONFIG_HOME"/starship.toml
ln -sf "$PWD/nvim" "$CONFIG_HOME"/nvim
ln -sf "$PWD/scripts" "$HOME"/scripts

# Packages
# apt
sudo apt update
sudo apt install curl ripgrep gh git alacritty
sudo apt install make gcc g++ unzip
sudo apt install fd
sudo apt install neovim lazygit
sudo apt install tmux

curl -sS https://starship.rs/install.sh | sh

# installing Go
#
## Remove any previous Go installation by deleting the /usr/local/go folder (if it exists), then extract the archive you just downloaded into /usr/local, creating a fresh Go tree in /usr/local/go:
#
#wget https://go.dev/dl/go1.22.5.linux-amd64.tar.gz
#rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.5.linux-amd64.tar.gz
## Do not untar the archive into an existing /usr/local/go tree. This is known to produce broken Go installations.

## Add /usr/local/go/bin to the PATH environment variable.
## You can do this by adding the following line to your $HOME/.profile or /etc/profile (for a system-wide installation):
#export PATH=$PATH:/usr/local/go/bin

# Note: Changes made to a profile file may not apply until the next time you log into your computer. To apply the changes immediately, just run the shell commands directly or execute them from the profile using a command such as source $HOME/.profile.
# Verify that you've installed Go by opening a command prompt and typing the following command:
go version

# Confirm that the command prints the installed version of Go.

# bash environment
bash exec -l

# ubuntu specific notes
# create symbolic link to neovim from vim when not using neovim on
# Ubuntu systems, because I use the v alias everywhere.
# sudo ln -sf /usr/bin/vim /usr/bin/nvim
