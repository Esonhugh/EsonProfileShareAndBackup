#!/bin/zsh

# requirement
#

nvim --version|brew install neovim  || sudo apt install neovim
python3 --version|brew install python3 || sudo apt install python3
ruby --version|brew install ruby || sudo apt install ruby
pip || apt install python3-pip||curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py&&python3 get-pip.py
brew install gem||sudo apt install gem

sudo pip3 install pynvim
sudo pip3 install jedi
sudo gem install json rest-client solargraph
solargraph download-core
yard gems

export CUR_installPath="`pwd`"

# download vim plug

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.vimrc ~/.config/nvim/init.vim

mv $CUR_installPath/vimrc ~/.vimrc

unset CUR_installPath

# rm -rf EsonProfileShareAndBackup
:<<EOF
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
nvim +PlugUpdate +UpdateRemotePlugins +qa
nvim +checkhealth

echo "if you do so,you will success install my profile now"
