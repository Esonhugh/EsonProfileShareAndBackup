#!/bin/zsh

sudo pip3 install pynvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ~/.vimrc ~/.config/nvim/init.vim
cd ~
wget http://esonhugh.github.io/back/vimrc
mv vimrc .vimrc

echo 'open neovim(command:nvim) \
	in COMMAND MODE use command \
	:PlugInstall \
	and wait for the vim plug autoInstall\
	the Plugins in the profile'

read;
nvim


echo "if you do so,you will success install my profile now"

