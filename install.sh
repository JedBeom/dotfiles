echo "Installing Neovim, fcitx, git, make and yay..."
sudo pacman -S neovim fcitx git make yay

echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing Vundle.vim..."
mkdir ~/.vim
mkdir ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Copying config files to home directory..."
cp ./home/.vimrc ~/.vimrc
cp ./home/.zshrc ~/.zshrc
echo "fcitx..."
cp ./home/.config/fctix/skin/default ~/.config/fcitx/skin/ 
echo "nvim..."
cp -r ./home/.config/nvim/ ~/.config
echo "agnoster..."
cp ./home/agnoster.zsh-theme ~/.oh-my-zsh/themes/agnoster.zsh-theme
echo

echo "Installing Golang 1.11.1..."
wget https://dl.google.com/go/go1.11.1.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.11.1.linux-amd64.tar.gz

echo "Running :PluginInstall..."
nvim +PluginInstall +GoInstallBinaries +qall

echo "install.sh done.\nDon't forget to edit 'bombwhale' in ~/.zshrc to your username."
echo "After Edit it, run source ~/.zshrc"
