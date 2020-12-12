#!/bin/zsh

# requirement
brew install neovim  || sudo apt install neovim
brew install python3 || sudo apt install python3
brew install exuberant-ctags || sudo apt install exuberant-ctags
sudo pip3 install pynvim
sudo pip3 install jedi


export CUR_installPath="`pwd`"

# download vim plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s ~/.vimrc ~/.config/nvim/init.vim

mv $CUR_installPath/vimrc ~/.vimrc

unset CUR_installPath

# rm -rf EsonProfileShareAndBackup

echo 'open neovim(command:nvim) \
	in COMMAND MODE use command \
	\
	:PlugInstall \
	:call mkdp#util#install() \
	\
	and wait for the vim plug autoInstall\
	the Plugins in the profile'

read;
\vim Install.installer<<EOF
:PlugInstall
:call mkdp#util#install()
:wq
EOF

echo y|rm Install.installer

echo "if you do so,you will success install my profile now"
