echo "Installing Neovim, fcitx, git and make..."
sudo pacman -S neovim fcitx git make

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"<Paste>

echo "Installing Vundle.vim..."
mkdir ~/.vim
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Copying config files to home directory..."
cp ./home/.vimrc ~/.vimrc
cp ./home/.zshrc ~/.zshrc
cp -r .config ~
cp ./home/agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme

echo "Installing Golang 1.11.1..."
wget https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.11.1.linux-amd64.tar.gz

echo "Running :PluginInstall..."
nvim +PluginInstall +qall

echo "install.sh done.\nDon't forget to edit 'bombwhale' in ~/.zshrc to your username."
