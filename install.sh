#!/bin/sh
sudo apt update && sudo apt upgrade -y
sudo apt install -y neovim
sudo apt install -y zsh
ssh-keygen -t rsa -b 4096 -C "mnpq.raven@gmail.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
clip.exe < /.ssh/id_rsa.pub
# CONFIRM YES NO AFTER PASTING KEY TO GITHUB
git clone git@github.com:mnpqraven/dotfiles.git
cp dotfiles/.vim ./.vim -r
cp dotfiles/.vimrc ./.vimrc
mkdir .config
cp dotfiles/.config/nvim .config/ -r
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
